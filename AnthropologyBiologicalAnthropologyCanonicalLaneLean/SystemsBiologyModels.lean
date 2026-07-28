import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.BiologicalAnthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure SystemsBiologyPackage (A : AdmissibleClass) where
  geneRegulatoryNetwork : Prop
  metabolicPathways : Prop
  signalTransduction : Prop
  networkDynamics : Prop

structure SystemsBiologyEvidence {A : AdmissibleClass} (S : SystemsBiologyPackage A) where
  geneRegulatoryNetworkClosed : S.geneRegulatoryNetwork
  metabolicPathwaysClosed : S.metabolicPathways
  signalTransductionClosed : S.signalTransduction
  networkDynamicsClosed : S.networkDynamics

def SystemsBiologyClosed {A : AdmissibleClass} (S : SystemsBiologyPackage A) : Prop :=
  S.geneRegulatoryNetwork ∧ S.metabolicPathways ∧ S.signalTransduction ∧ S.networkDynamics

theorem systems_biology_closed_from_evidence {A : AdmissibleClass} (S : SystemsBiologyPackage A) (Ev : SystemsBiologyEvidence S) : SystemsBiologyClosed S :=
  And.intro Ev.geneRegulatoryNetworkClosed (And.intro Ev.metabolicPathwaysClosed (And.intro Ev.signalTransductionClosed Ev.networkDynamicsClosed))

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse