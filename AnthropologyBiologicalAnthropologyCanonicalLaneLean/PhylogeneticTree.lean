import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure PhylogeneticTreePackage where
  species : Type
  geneticDistance : species → species → ℝ
  coalescenceTime : ℝ
  treeTopology : Prop
  likelihood : Prop

structure PhylogeneticTreeEvidence (T : PhylogeneticTreePackage) where
  treeTopologyClosed : T.treeTopology
  likelihoodComputed : T.likelihood

def PhylogeneticTreeClosed (T : PhylogeneticTreePackage) : Prop :=
  T.treeTopology ∧ T.likelihood

theorem phylogenetic_tree_closed_from_evidence
    (T : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence T) :
    PhylogeneticTreeClosed T := by
  exact And.intro E.treeTopologyClosed E.likelihoodComputed

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse