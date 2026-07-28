import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure EpidemiologySIRPackage where
  susceptible : ℝ
  infected : ℝ
  recovered : ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop
  basicReproductiveNumber : ℝ
  diseaseFreeEquilibriumStable : Prop

structure EpidemiologySIREvidence (E : EpidemiologySIRPackage) where
  sirEquationsClosed : E.sirEquations
  basicReproductiveNumberComputed : E.basicReproductiveNumber = E.transmissionRate / E.recoveryRate
  diseaseFreeEquilibriumStableClosed : E.diseaseFreeEquilibriumStable

def EpidemiologySIRClosed (E : EpidemiologySIRPackage) : Prop :=
  E.sirEquations ∧ (E.basicReproductiveNumber = E.transmissionRate / E.recoveryRate) ∧ E.diseaseFreeEquilibriumStable

theorem epidemiology_sir_closed_from_evidence
    (E : EpidemiologySIRPackage) (Ev : EpidemiologySIREvidence E) :
    EpidemiologySIRClosed E := by
  unfold EpidemiologySIRClosed
  exact And.intro Ev.sirEquationsClosed
    (And.intro Ev.basicReproductiveNumberComputed Ev.diseaseFreeEquilibriumStableClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse