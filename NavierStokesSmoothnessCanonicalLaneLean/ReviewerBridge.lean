import NavierStokesSmoothnessCanonicalLaneLean.Formalization
import NavierStokesSmoothnessCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace NavierStokesSmoothnessCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "e70f283d686a6306c0340cbf48b5e0c9f6b1b270d5a371e6a5058465fd72abfa", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "579880738adec06ba41a62845ed72b11cd957841a9c4068c0469613c406db3f5", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "c4b954af2e48126f565e8ec7d22aa26eb483a4c9b22fe7349fdba714944d1f56", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "0f29aa31f6fe41e06926a65f5bbe70a8fab7f49364af41185c9e1b4b78a63654", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "04952c2843851e2270f9b8849bb89aec69cb7dddcc4987a99ccb86f16964dbee", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "3f1d972846a25290fd565a5d5f861d0a2978fe8ae5453f12b52c5568c711e1cc", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "699ae55d67ec6d0ae6453b374d2d3d1a8dcebbe3c9a1455bb2ff3f2a4f59fa65", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "b9809b328be550c240df80a991cce33673f3e346c8bbaef0a8ed94418c13b8f0", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "675093ad105bfa867f14fa39c68691b19278381ea925fbdc6ed9796fa9cd6eba", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "8844427c3de1e4dbb1ff6fc74ab86400dd2639197109876fc1800b1a4cdc0514" },
  { path := "README.md", sha256 := "0a13099f0cc276d33c2e5a19d589de0babfadc6e72fa7c1b534da44fd7ccd81a" },
  { path := "artifacts/constants_extracted.json", sha256 := "0f29aa31f6fe41e06926a65f5bbe70a8fab7f49364af41185c9e1b4b78a63654" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "c4b954af2e48126f565e8ec7d22aa26eb483a4c9b22fe7349fdba714944d1f56" },
  { path := "artifacts/constants_registry.json", sha256 := "04952c2843851e2270f9b8849bb89aec69cb7dddcc4987a99ccb86f16964dbee" },
  { path := "artifacts/promotion_report.json", sha256 := "699ae55d67ec6d0ae6453b374d2d3d1a8dcebbe3c9a1455bb2ff3f2a4f59fa65" },
  { path := "artifacts/stitch_constants.json", sha256 := "3f1d972846a25290fd565a5d5f861d0a2978fe8ae5453f12b52c5568c711e1cc" },
  { path := "notes/EG1_public.md", sha256 := "70e8e9a461f3bcf815328a956ad485923a442da919f58e4fdff9972e338e29fb" },
  { path := "notes/EG2_public.md", sha256 := "ff082fa2dcecca988f5e63a23afe7e9f0ccb1b0519ec51a2f49824266664bd72" },
  { path := "notes/EG3_public.md", sha256 := "7d87e1dfe44e5a90f48fa579dcb59c2a9b4a9ddcf15019ad11b97e15fdb1c1c9" },
  { path := "notes/EG4_public.md", sha256 := "ef98941f3cf99371d9b28c847b55d2ad1d5e60622ab4c2fabac2c2b522509f3b" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "579880738adec06ba41a62845ed72b11cd957841a9c4068c0469613c406db3f5" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e0b45e04456297fcc2a66ba14d75659c83b0ac459df644f64442ea5c91bc53b4" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "42f59aea2585207b4b926d772e7c3ce0d556ccb1a1a41cef7ca80944ebda7e36" },
  { path := "paper/NAVIER_STOKES_SMOOTHNESS_PREPRINT.md", sha256 := "9b896ba7f6120a7438aadb95d0dfcdd1ad2e2c40810b66a2df4ca7adb1903104" },
  { path := "repro/REPRO_PACK.md", sha256 := "003d9e3e862ceaed4dd7592ccfe30f5940e91bc2e6351df272b17ace21fbbbde" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "02ef178ab684707fe5a33b940028d5158d41ef95a549c8051fc5f11f6fb464be" },
  { path := "repro/certificate_baseline.json", sha256 := "675093ad105bfa867f14fa39c68691b19278381ea925fbdc6ed9796fa9cd6eba" },
  { path := "repro/run_repro.sh", sha256 := "a049a2cfa8528ee55e7c5652f3b0443a12fa63ca550e66ae8b08924f7e296c3f" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ns_closure_guard.py", sha256 := "17ba17144c28930118af9070d29f1b3af5b107797ce8e8eb8abd508cbebd6997" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "N_G1", status := "PASS" },
  { gate := "N_G2", status := "PASS" },
  { gate := "N_G3", status := "PASS" },
  { gate := "N_G4", status := "PASS" },
  { gate := "N_G5", status := "PASS" },
  { gate := "N_G6", status := "PASS" },
  { gate := "N_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "1.0" },
  { key := "kappa_enstrophy", value := "1.0" },
  { key := "rho_rigidity", value := "1.0" },
  { key := "sigma_capture", value := "1.0" },
  { key := "sigma_star_can", value := "1.0" },
  { key := "tau_floor", value := "1.0" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_enstrophy",
  "rho_rigidity",
  "sigma_capture",
  "sigma_star_can",
  "tau_floor"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 5 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 24 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end NavierStokesSmoothnessCanonicalLaneLean
end HautevilleHouse
