import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

def ConstrainedBiologicalAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biological_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedBiologicalAnthropologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse