import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  biologicalConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "anthropology-biological-anthropology-canonical-lane",
  theoremName := "Anthropology Biological Anthropology Canonical Lane",
  theoremObject := "Evolutionary dynamics and population equilibrium",
  classicalBoundary := "Classical source boundary carried by theoremBoundaryOpen",
  biologicalConstrainedStatement := "Biological-constrained theorem certificate internalized through admissible class closure",
  certificateLane := "biological_constrained",
  carriedRemainder := "Unrestricted classical closure remains carried"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "anthropology-biological-anthropology-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "biological_constrained" := by
  rfl

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse