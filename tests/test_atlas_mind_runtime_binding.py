import json
from pathlib import Path
import unittest

ROOT = Path(__file__).resolve().parents[1]
BINDING = ROOT / "ATLAS_MIND_RUNTIME_BINDING.json"


class AtlasMindRuntimeBindingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.binding = json.loads(BINDING.read_text(encoding="utf-8"))

    def test_no_replacement_law(self):
        self.assertTrue(self.binding["no_replacement"])
        self.assertEqual(self.binding["canonical_identity"]["entity_id"], "atlas-mind")

    def test_historical_lineages_collapse_to_one_identity(self):
        historical = self.binding["historical_lineage"]
        for alias in ("model-zero", "atlas-mind-v2", "atlas-mind-v3", "atlas-mind-v4", "atlas-mind-3.0", "omnimind"):
            self.assertIn(alias, historical)
            self.assertEqual(historical[alias]["canonical_entity_id"], "atlas-mind")

    def test_vevr_is_forensic_hold(self):
        hold = self.binding["forensic_holds"]["VEVR"]
        self.assertEqual(hold["disposition"], "FORENSIC_HOLD")
        self.assertEqual(hold["promotion"], "BLOCKED_PENDING_SOURCE_PROVENANCE")

    def test_existing_owner_chain_is_preserved(self):
        model = self.binding["working_model"]
        self.assertEqual(model["inference_fabric"], "GA-NIF")
        self.assertEqual(model["authority_owner"], "JANUS/ODIN")
        self.assertIn("Packet OS", model["work_owners"])
        self.assertIn("Workforce Spine", model["work_owners"])
        self.assertEqual(model["execution_owner"], "EDEN")
        self.assertEqual(model["memory_owner"], "THOTH")
        self.assertIn("ProofGrid", model["proof_owners"])

    def test_canonical_ingress_is_existing_eden_infrastructure(self):
        model = self.binding["working_model"]
        self.assertTrue(model["identity_runtime"].startswith("Atlas-Ascend/Eden-2.0:"))
        self.assertTrue(model["canonical_ingress"].startswith("Atlas-Ascend/Eden-2.0:"))


if __name__ == "__main__":
    unittest.main()
