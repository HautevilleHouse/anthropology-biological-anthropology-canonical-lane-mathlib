import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure BiologicalAnthropologyObject where
  populationSize : ℕ
  geneFrequencies : List ℝ
  fitnessLandscape : Prop
  stableEquilibrium : Prop

structure AdmissibleClass where
  object : BiologicalAnthropologyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse