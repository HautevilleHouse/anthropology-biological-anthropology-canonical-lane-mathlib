import HautevilleHouse.AnthropologyBiologicalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure EpidemiologyModelsPackage where
  compartmentModel : Type u
  transmissionRate : Prop
  reproductionNumber : Prop
  endemicEquilibrium : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  transmissionRateClosed : E.transmissionRate
  reproductionNumberClosed : E.reproductionNumber
  endemicEquilibriumClosed : E.endemicEquilibrium

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.transmissionRate ∧ E.reproductionNumber ∧ E.endemicEquilibrium

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage) (Ev : EpidemiologyModelsEvidence E) :
    EpidemiologyModelsClosed E :=
  And.intro Ev.transmissionRateClosed (And.intro Ev.reproductionNumberClosed Ev.endemicEquilibriumClosed)

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse