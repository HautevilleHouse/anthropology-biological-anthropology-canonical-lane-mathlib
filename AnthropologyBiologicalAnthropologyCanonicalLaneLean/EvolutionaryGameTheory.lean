import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Type u
  replicatorDynamic : Prop
  nashEquilibrium : Prop
  essStability : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorDynamicClosed : E.replicatorDynamic
  nashEquilibriumClosed : E.nashEquilibrium
  essStabilityClosed : E.essStability

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorDynamic ∧ E.nashEquilibrium ∧ E.essStability

theorem evolutionary_game_theory_closed_from_evidence (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E :=
  And.intro Ev.replicatorDynamicClosed (And.intro Ev.nashEquilibriumClosed Ev.essStabilityClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse