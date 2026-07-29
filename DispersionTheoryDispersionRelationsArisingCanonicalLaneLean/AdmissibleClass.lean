import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure AdmissibleClass where
  object : DispersionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DispersionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse