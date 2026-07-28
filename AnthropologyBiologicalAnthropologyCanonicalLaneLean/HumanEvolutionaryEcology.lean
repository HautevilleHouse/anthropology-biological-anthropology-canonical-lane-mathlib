import canonicalLaneMathlib.AdmissibleClass

/-!
# Human Evolutionary Ecology Package
-/

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure HumanEvolutionaryEcologyPackage where
  optimalForagingTheory : Prop
  dietBreadthModel : Prop
  patchChoiceModel : Prop
  marginalValueTheorem : Prop

structure HumanEvolutionaryEcologyEvidence (H : HumanEvolutionaryEcologyPackage) where
  optimalForagingTheoryClosed : H.optimalForagingTheory
  dietBreadthModelClosed : H.dietBreadthModel
  patchChoiceModelClosed : H.patchChoiceModel
  marginalValueTheoremClosed : H.marginalValueTheorem

def HumanEvolutionaryEcologyClosed (H : HumanEvolutionaryEcologyPackage) : Prop :=
  H.optimalForagingTheory ∧ H.dietBreadthModel ∧
  H.patchChoiceModel ∧ H.marginalValueTheorem

theorem human_evolutionary_ecology_closed_from_evidence (H : HumanEvolutionaryEcologyPackage)
    (Ev : HumanEvolutionaryEcologyEvidence H) : HumanEvolutionaryEcologyClosed H := by
  exact And.intro Ev.optimalForagingTheoryClosed
    (And.intro Ev.dietBreadthModelClosed
      (And.intro Ev.patchChoiceModelClosed Ev.marginalValueTheoremClosed))

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse