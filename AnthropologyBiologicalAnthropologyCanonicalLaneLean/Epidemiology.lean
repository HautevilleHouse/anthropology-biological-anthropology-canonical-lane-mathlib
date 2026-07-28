import canonicalLaneMathlib.AdmissibleClass

/-!
# Epidemiology Package
-/

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure EpidemiologyPackage where
  susceptibleInfectedRecoveredModel : Prop
  basicReproductionNumber : Prop
  herdImmunityThreshold : Prop
  epidemicCurve : Prop

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  susceptibleInfectedRecoveredModelClosed : E.susceptibleInfectedRecoveredModel
  basicReproductionNumberClosed : E.basicReproductionNumber
  herdImmunityThresholdClosed : E.herdImmunityThreshold
  epidemicCurveClosed : E.epidemicCurve

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.susceptibleInfectedRecoveredModel ∧ E.basicReproductionNumber ∧
  E.herdImmunityThreshold ∧ E.epidemicCurve

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.susceptibleInfectedRecoveredModelClosed
    (And.intro Ev.basicReproductionNumberClosed
      (And.intro Ev.herdImmunityThresholdClosed Ev.epidemicCurveClosed))

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse