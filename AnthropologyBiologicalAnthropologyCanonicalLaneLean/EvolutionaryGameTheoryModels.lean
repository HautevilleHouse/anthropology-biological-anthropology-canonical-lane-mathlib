import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.BiologicalAnthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage (A : AdmissibleClass) where
  payoffMatrix : List (List ℝ)
  replicatorDynamics : Prop
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop

structure EvolutionaryGameTheoryEvidence {A : AdmissibleClass} (E : EvolutionaryGameTheoryPackage A) where
  replicatorDynamicsClosed : E.replicatorDynamics
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy

def EvolutionaryGameTheoryClosed {A : AdmissibleClass} (E : EvolutionaryGameTheoryPackage A) : Prop :=
  E.replicatorDynamics ∧ E.nashEquilibrium ∧ E.evolutionaryStableStrategy

theorem evolutionary_game_theory_closed_from_evidence {A : AdmissibleClass} (E : EvolutionaryGameTheoryPackage A) (Ev : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E :=
  And.intro Ev.replicatorDynamicsClosed (And.intro Ev.nashEquilibriumClosed Ev.evolutionaryStableStrategyClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse