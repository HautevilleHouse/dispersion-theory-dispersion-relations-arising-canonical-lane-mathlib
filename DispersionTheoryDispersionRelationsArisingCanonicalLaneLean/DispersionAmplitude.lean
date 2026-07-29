import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure DispersionAmplitudePackage where
  forwardAmplitude : Type u
  crossingAmplitude : Type v
  analyticContinuation : Prop
  polynomialBoundedness : Prop
  dispersionRelation : Prop
  forwardAmplitudeDefined : forwardAmplitude
  crossingAmplitudeDefined : crossingAmplitude
  analyticContinuationTerm : analyticContinuation
  polynomialBoundednessTerm : polynomialBoundedness
  dispersionRelationTerm : dispersionRelation

structure DispersionAmplitudeEvidence (D : DispersionAmplitudePackage) where
  analyticContinuationClosed : D.analyticContinuation
  polynomialBoundednessClosed : D.polynomialBoundedness
  dispersionRelationClosed : D.dispersionRelation

def DispersionAmplitudeClosed (D : DispersionAmplitudePackage) : Prop :=
  D.analyticContinuation ∧ D.polynomialBoundedness ∧ D.dispersionRelation

theorem dispersion_amplitude_closed_from_evidence (D : DispersionAmplitudePackage)
    (E : DispersionAmplitudeEvidence D) : DispersionAmplitudeClosed D := by
  exact And.intro E.analyticContinuationClosed
    (And.intro E.polynomialBoundednessClosed E.dispersionRelationClosed)

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse