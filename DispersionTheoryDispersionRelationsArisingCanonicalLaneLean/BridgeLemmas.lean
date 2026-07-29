import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DispersionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse