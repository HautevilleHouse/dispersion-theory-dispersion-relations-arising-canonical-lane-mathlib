import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure HyperbolicDispersionRelationPackage where
  hyperbolicKinematics : Prop
  doubleSpectralRepresentation : Prop
  mandelstamAnalyticity : Prop
  crossingSymmetryImplemented : Prop
  asymptoticBounds : Prop

structure HyperbolicDispersionRelationEvidence (H : HyperbolicDispersionRelationPackage) where
  hyperbolicKinematicsClosed : H.hyperbolicKinematics
  doubleSpectralRepresentationClosed : H.doubleSpectralRepresentation
  mandelstamAnalyticityClosed : H.mandelstamAnalyticity
  crossingSymmetryImplementedClosed : H.crossingSymmetryImplemented
  asymptoticBoundsClosed : H.asymptoticBounds

def HyperbolicDispersionRelationClosed (H : HyperbolicDispersionRelationPackage) : Prop :=
  H.hyperbolicKinematics ∧ H.doubleSpectralRepresentation ∧
  H.mandelstamAnalyticity ∧ H.crossingSymmetryImplemented ∧
  H.asymptoticBounds

theorem hyperbolic_dispersion_relation_closed_from_evidence
    (H : HyperbolicDispersionRelationPackage) (E : HyperbolicDispersionRelationEvidence H) :
    HyperbolicDispersionRelationClosed H := by
  exact And.intro E.hyperbolicKinematicsClosed
    (And.intro E.doubleSpectralRepresentationClosed
      (And.intro E.mandelstamAnalyticityClosed
        (And.intro E.crossingSymmetryImplementedClosed E.asymptoticBoundsClosed)))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse