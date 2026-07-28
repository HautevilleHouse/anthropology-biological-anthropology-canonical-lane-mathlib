import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.BiologicalAnthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure PopulationDynamicsPackage (A : AdmissibleClass) where
  birthRate : ℝ
  deathRate : ℝ
  carryingCapacity : ℝ
  logisticGrowth : Prop
  demographicStochasticity : Prop

structure PopulationDynamicsEvidence {A : AdmissibleClass} (P : PopulationDynamicsPackage A) where
  logisticGrowthClosed : P.logisticGrowth
  demographicStochasticityClosed : P.demographicStochasticity

def PopulationDynamicsClosed {A : AdmissibleClass} (P : PopulationDynamicsPackage A) : Prop :=
  P.logisticGrowth ∧ P.demographicStochasticity

theorem population_dynamics_closed_from_evidence {A : AdmissibleClass} (P : PopulationDynamicsPackage A) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P :=
  And.intro E.logisticGrowthClosed E.demographicStochasticityClosed

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse