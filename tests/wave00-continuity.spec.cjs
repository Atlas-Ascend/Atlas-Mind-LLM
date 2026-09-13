const fs = require("node:fs");
const path = require("node:path");
const { randomUUID } = require("node:crypto");
const { chromium, expect, test } = require("@playwright/test");

const baseURL = process.env.WAVE00_BASE_URL || "https://atlasmind.global";
const proofDir = path.join(process.cwd(), "proof", "wave00-continuity");
const proofPath = path.join(proofDir, "wave00-continuity.json");

function normalizeStream(raw) {
  return raw.replaceAll('\\"', '"').replaceAll("\\\\", "\\");
}

function captureValues(source, key) {
  const expression = new RegExp(`"${key}"\\s*:\\s*"([^"]+)"`, "g");
  return [...source.matchAll(expression)].map((match) => match[1]);
}

function captureNumbers(source, key) {
  const expression = new RegExp(`"${key}"\\s*:\\s*(\\d+)`, "g");
  return [...source.matchAll(expression)].map((match) => Number(match[1]));
}

async function registerRegularUser(page, email, password) {
  await page.goto(`${baseURL}/register`, { waitUntil: "domcontentloaded" });
  await page.getByPlaceholder("user@acme.com").fill(email);
  await page.getByLabel("Password").fill(password);
  await page.getByRole("button", { name: "Sign Up" }).click();
  await expect(page.getByTestId("toast")).toContainText(
    "Account created successfully!"
  );
  await page.goto(`${baseURL}/`, { waitUntil: "domcontentloaded" });
  await expect(page.getByTestId("user-email")).toHaveText(email);
}

async function loginRegularUser(page, email, password) {
  await page.goto(`${baseURL}/login`, { waitUntil: "domcontentloaded" });
  await page.getByPlaceholder("user@acme.com").fill(email);
  await page.getByLabel("Password").fill(password);
  await page.getByRole("button", { name: "Sign In" }).click();
  await page.waitForURL((url) => url.origin === new URL(baseURL).origin && url.pathname === "/");
  await expect(page.getByTestId("user-email")).toHaveText(email);
}

async function chooseReasoningModel(page) {
  await page.getByTestId("model-selector").click();
  await page.getByTestId("model-selector-item-chat-model-reasoning").click();
  await expect(page.getByTestId("model-selector")).toContainText("Reasoning model");
}

async function sendChat(page, message) {
  const responsePromise = page.waitForResponse(
    (response) =>
      response.url().includes("/api/chat") &&
      response.request().method() === "POST",
    { timeout: 180000 }
  );

  await page.getByTestId("multimodal-input").fill(message);
  await page.getByTestId("send-button").click();

  const response = await responsePromise;
  await response.finished();
  const body = await response.text();
  await expect(page.getByTestId("send-button")).toBeVisible({ timeout: 180000 });

  const lastAssistant = page.getByTestId("message-assistant").last();
  await expect(lastAssistant).toBeVisible({ timeout: 180000 });
  const content = await lastAssistant
    .getByTestId("message-content")
    .innerText()
    .catch(() => "");

  return {
    status: response.status(),
    ok: response.ok(),
    body,
    content,
  };
}

async function liveAtlasStatus(page) {
  const response = await page.request.get(`${baseURL}/api/atlas/v1/status`);
  expect(response.ok()).toBeTruthy();
  const body = await response.json();
  expect(body && body.ok).toBe(true);
  expect(body && body.gaNif && body.gaNif.ok).toBe(true);
  expect(body.gaNif.status.processor_bound).toBe(true);
  expect(body.gaNif.status.processor_state).toBe("BOUND_RESPONSIVE");
  return body;
}

test.setTimeout(12 * 60 * 1000);

test("Wave 00 persistent authenticated restart/recall continuity", async () => {
  fs.mkdirSync(proofDir, { recursive: true });

  const runId = process.env.GITHUB_RUN_ID || String(Date.now());
  const marker = `ATLAS-W00-${runId}-${randomUUID().slice(0, 8)}`;
  const email = `wave00-proof-${runId}-${randomUUID().slice(0, 8)}@playwright.com`;
  const password = `W00!${randomUUID()}Aa9`;

  const proof = {
    campaign: "ATLAS-MIND-3.0-W00",
    contract: "COMMAND_TO_PROOF_FINISH_STANDARD_004",
    baseURL,
    runId,
    marker,
    syntheticRegularUser: email,
    passwordPersistedOrUploaded: false,
    startedAt: new Date().toISOString(),
    status: "IN_PROGRESS",
    gates: {},
  };

  let browserA = null;
  let browserB = null;

  try {
    browserA = await chromium.launch({ headless: true });
    const contextA = await browserA.newContext();
    const pageA = await contextA.newPage();

    const preStatus = await liveAtlasStatus(pageA);
    proof.preflight = {
      gaNif: preStatus.gaNif.fabricState,
      processorState: preStatus.gaNif.status.processor_state,
      configuredModel: preStatus.gaNif.status.configured_model,
      observedModelCount: preStatus.gaNif.status.observed_model_count,
    };

    await registerRegularUser(pageA, email, password);
    proof.gates.regularUserRegistration = "PASS";

    await chooseReasoningModel(pageA);
    proof.gates.reasoningModelSelected = "PASS";

    const firstPrompt = [
      "Wave 00 final acceptance test. Execute this now through your existing governed executeAtlasObjective tool; do not merely describe an execution.",
      `Continuity marker: ${marker}`,
      "Use exactly two safe, non-destructive ordered steps:",
      `1. Persist the exact marker ${marker} through the existing THOTH memory capability so the governed runtime returns durable memory state.`,
      `2. Compute SHA-256 of the exact marker ${marker} through the existing runtime SHA-256 capability.`,
      "JANUS and the deterministic runtime remain authoritative for capability selection.",
      `In your final response include the exact line WAVE00_MARKER=${marker} and summarize only verified tool results, proof, and returned memory state.`,
    ].join("\n");

    const first = await sendChat(pageA, firstPrompt);
    expect(first.ok).toBeTruthy();
    expect(first.status).toBeGreaterThanOrEqual(200);
    expect(first.status).toBeLessThan(300);

    const normalizedFirst = normalizeStream(first.body);
    expect(normalizedFirst).toContain("executeAtlasObjective");
    expect(normalizedFirst).toContain("COMPLETE_WITH_PROOF");

    const selectedCapabilities = captureValues(normalizedFirst, "selectedCapability");
    expect(selectedCapabilities).toContain("thoth.remember");
    expect(selectedCapabilities).toContain("runtime.sha256");

    const verifiedCount = (normalizedFirst.match(/"verified"\s*:\s*true/g) || []).length;
    expect(verifiedCount).toBeGreaterThanOrEqual(2);

    const proofCounts = captureNumbers(normalizedFirst, "proofCount");
    expect(proofCounts.length).toBeGreaterThanOrEqual(2);
    expect(proofCounts.every((count) => count > 0)).toBeTruthy();

    const memoryStates = captureValues(normalizedFirst, "memoryState");
    expect(memoryStates.length).toBeGreaterThanOrEqual(1);
    expect(memoryStates.every((state) => state.trim().length > 0)).toBeTruthy();

    expect(first.content).toContain(`WAVE00_MARKER=${marker}`);

    await pageA.waitForURL(/\/chat\/[0-9a-f-]+$/i, { timeout: 120000 });
    const chatUrl = pageA.url();
    const chatPath = new URL(chatUrl).pathname;
    const chatId = chatPath.split("/").at(-1);
    expect(chatId).toBeTruthy();

    await expect(
      pageA.getByTestId("message-user").filter({ hasText: marker }).first()
    ).toBeVisible();

    await pageA.screenshot({
      path: path.join(proofDir, "before-browser-restart.png"),
      fullPage: true,
    });
    fs.writeFileSync(path.join(proofDir, "first-chat-stream.txt"), first.body, "utf8");

    proof.firstTurn = {
      chatUrl,
      chatId,
      httpStatus: first.status,
      selectedCapabilities,
      verifiedCount,
      proofCounts,
      memoryStates,
      parentCorrelationIds: captureValues(normalizedFirst, "parentCorrelationId"),
      runIds: captureValues(normalizedFirst, "runId"),
      correlationIds: captureValues(normalizedFirst, "correlationId"),
      markerRenderedByAssistant: first.content.includes(`WAVE00_MARKER=${marker}`),
    };
    Object.assign(proof.gates, {
      authenticatedInference: "PASS",
      modelSelectedGovernedTool: "PASS",
      governedExecutionCompleteWithProof: "PASS",
      thothRemember: "PASS",
      runtimeSha256: "PASS",
      proofCountPositive: "PASS",
      memoryStateReturned: "PASS",
      durableChatCreated: "PASS",
    });

    await contextA.close();
    await browserA.close();
    browserA = null;
    proof.gates.browserProcessARestartBoundary = "PASS";

    browserB = await chromium.launch({ headless: true });
    const contextB = await browserB.newContext();
    const pageB = await contextB.newPage();

    await loginRegularUser(pageB, email, password);
    proof.gates.reauthenticationAfterRestart = "PASS";

    const historyResponse = await pageB.request.get(`${baseURL}/api/history?limit=20`);
    expect(historyResponse.ok()).toBeTruthy();
    const historyBody = await historyResponse.text();
    expect(historyBody).toContain(String(chatId));
    proof.gates.userScopedHistoryAfterRestart = "PASS";

    const reloadResponse = await pageB.goto(`${baseURL}${chatPath}`, {
      waitUntil: "domcontentloaded",
    });
    expect(reloadResponse && reloadResponse.ok()).toBeTruthy();
    await expect(
      pageB.getByTestId("message-user").filter({ hasText: marker }).first()
    ).toBeVisible({ timeout: 120000 });
    expect(await pageB.getByTestId("message-assistant").count()).toBeGreaterThan(0);
    proof.gates.persistedChatReload = "PASS";

    const secondPrompt = [
      "Continue the existing Wave 00 continuity test from the persisted conversation already loaded in this chat.",
      "Do not execute any new external tool or action for this turn.",
      "Read the prior conversation context and return exactly these two facts if and only if that context survived the restart:",
      `WAVE00_MARKER=${marker}`,
      "CONTINUITY_RECALL=PASS",
      "If you cannot see the prior marker in persisted context, return CONTINUITY_RECALL=FAIL instead.",
    ].join("\n");

    const second = await sendChat(pageB, secondPrompt);
    expect(second.ok).toBeTruthy();
    expect(second.content).toContain(`WAVE00_MARKER=${marker}`);
    expect(second.content).toContain("CONTINUITY_RECALL=PASS");
    expect(pageB.url()).toBe(chatUrl);

    await pageB.screenshot({
      path: path.join(proofDir, "after-browser-restart.png"),
      fullPage: true,
    });
    fs.writeFileSync(path.join(proofDir, "second-chat-stream.txt"), second.body, "utf8");

    const postStatus = await liveAtlasStatus(pageB);
    proof.secondTurn = {
      sameChatUrl: pageB.url() === chatUrl,
      httpStatus: second.status,
      exactMarkerRecalled: second.content.includes(`WAVE00_MARKER=${marker}`),
      continuityRecallPass: second.content.includes("CONTINUITY_RECALL=PASS"),
    };
    proof.postflight = {
      gaNif: postStatus.gaNif.fabricState,
      processorState: postStatus.gaNif.status.processor_state,
      configuredModel: postStatus.gaNif.status.configured_model,
      observedModelCount: postStatus.gaNif.status.observed_model_count,
    };
    Object.assign(proof.gates, {
      restartRecall: "PASS",
      continueSameChat: "PASS",
      postflightRuntime: "PASS",
    });

    await contextB.close();
    await browserB.close();
    browserB = null;
    proof.status = "PASS";
  } catch (error) {
    proof.status = "FAIL";
    proof.failure = error instanceof Error ? `${error.name}: ${error.message}` : String(error);
    throw error;
  } finally {
    if (browserA) await browserA.close().catch(() => undefined);
    if (browserB) await browserB.close().catch(() => undefined);
    proof.finishedAt = new Date().toISOString();
    fs.writeFileSync(proofPath, JSON.stringify(proof, null, 2), "utf8");
  }
});
