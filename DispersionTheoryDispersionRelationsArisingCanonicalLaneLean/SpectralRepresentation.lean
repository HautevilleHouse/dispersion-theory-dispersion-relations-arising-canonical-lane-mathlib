import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SpectralRepresentationPackage where
  spectralFunction : Type u
  integralRepresentation : Prop
  dispersionRelation : Prop
  analyticProperties : Prop
  asymptoticBehavior : Prop

structure SpectralRepresentationEvidence (S : SpectralRepresentationPackage) where
  integralRepresentationClosed : S.integralRepresentation
  dispersionRelationClosed : S.dispersionRelation
  analyticPropertiesClosed : S.analyticProperties
  asymptoticBehaviorClosed : S.asymptoticBehavior

def SpectralRepresentationClosed (S : SpectralRepresentationPackage) : Prop :=
  S.integralRepresentation ∧ S.dispersionRelation ∧
  S.analyticProperties ∧ S.asymptoticBehavior

theorem spectral_representation_closed_from_evidence
    (S : SpectralRepresentationPackage) (E : SpectralRepresentationEvidence S) :
    SpectralRepresentationClosed S := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.dispersionRelationClosed
      (And.intro E.analyticPropertiesClosed E.asymptoticBehaviorClosed))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse