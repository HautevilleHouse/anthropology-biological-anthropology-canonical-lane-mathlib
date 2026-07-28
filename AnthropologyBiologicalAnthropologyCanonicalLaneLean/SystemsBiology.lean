import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure SystemsBiologyPackage where
  regulatoryNetwork : Type u
  geneExpressionDynamics : Prop
  feedbackLoops : Prop
  homeostasisCondition : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  geneExpressionDynamicsClosed : S.geneExpressionDynamics
  feedbackLoopsClosed : S.feedbackLoops
  homeostasisConditionClosed : S.homeostasisCondition

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.geneExpressionDynamics ∧ S.feedbackLoops ∧ S.homeostasisCondition

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) :
    SystemsBiologyClosed S :=
  And.intro E.geneExpressionDynamicsClosed (And.intro E.feedbackLoopsClosed E.homeostasisConditionClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse