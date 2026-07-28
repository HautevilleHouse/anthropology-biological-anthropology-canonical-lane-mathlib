import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyBiologicalAnthropologyCanonicalLaneLean

structure BiologicalAnthropologyAdmittedObject where
  populationModel : Type
  dynamics : Prop
  equilibrium : Prop
  conclusion : equilibrium

structure AdmissibleClass where
  object : BiologicalAnthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiologicalAnthropologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BiologicalAnthropologyWitnessClosed (O : BiologicalAnthropologyAdmittedObject) : Prop :=
  O.equilibrium

end AnthropologyBiologicalAnthropologyCanonicalLaneLean
end HautevilleHouse