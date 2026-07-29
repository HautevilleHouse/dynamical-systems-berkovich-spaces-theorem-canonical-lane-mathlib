import DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BerkovichAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BerkovichWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse