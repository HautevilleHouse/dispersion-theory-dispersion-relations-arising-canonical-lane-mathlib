import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean.DispersionRelations

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure PionNucleonForwardAmplitudePackage where
  isospinEvenAmplitude : Prop
  isospinOddAmplitude : Prop
  crossingEvenOdd : Prop
  forwardAmplitudeAnalytic : Prop
  isospinEvenAmplitudeTerm : isospinEvenAmplitude
  isospinOddAmplitudeTerm : isospinOddAmplitude
  crossingEvenOddTerm : crossingEvenOdd
  forwardAmplitudeAnalyticTerm : forwardAmplitudeAnalytic

structure PionNucleonForwardAmplitudeEvidence (P : PionNucleonForwardAmplitudePackage) where
  isospinEvenAmplitudeClosed : P.isospinEvenAmplitude
  isospinOddAmplitudeClosed : P.isospinOddAmplitude
  crossingEvenOddClosed : P.crossingEvenOdd
  forwardAmplitudeAnalyticClosed : P.forwardAmplitudeAnalytic

def PionNucleonForwardAmplitudeClosed (P : PionNucleonForwardAmplitudePackage) : Prop :=
  P.isospinEvenAmplitude ∧ P.isospinOddAmplitude ∧ P.crossingEvenOdd ∧ P.forwardAmplitudeAnalytic

theorem pion_nucleon_forward_amplitude_closed_from_evidence
    (P : PionNucleonForwardAmplitudePackage) (E : PionNucleonForwardAmplitudeEvidence P) :
    PionNucleonForwardAmplitudeClosed P := by
  exact And.intro E.isospinEvenAmplitudeClosed
    (And.intro E.isospinOddAmplitudeClosed
      (And.intro E.crossingEvenOddClosed E.forwardAmplitudeAnalyticClosed))

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse