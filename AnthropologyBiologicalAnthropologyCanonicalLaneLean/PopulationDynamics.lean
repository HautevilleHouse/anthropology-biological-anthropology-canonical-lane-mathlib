import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  growthRate : Type u
  carryingCapacity : Prop
  logisticEquation : Prop
  stabilityCondition : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  logisticEquationClosed : P.logisticEquation
  stabilityConditionClosed : P.stabilityCondition

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.logisticEquation ∧ P.stabilityCondition

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P :=
  And.intro E.carryingCapacityClosed (And.intro E.logisticEquationClosed E.stabilityConditionClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse