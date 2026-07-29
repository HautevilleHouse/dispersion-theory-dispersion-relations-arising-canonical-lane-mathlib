import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure CausalityPackage where
  forwardSupport : Prop
  backwardSupport : Prop
  causalSupport : Prop
  analyticContinuation : Prop
  crossingSymmetry : Prop

structure CausalityEvidence (C : CausalityPackage) where
  forwardSupportClosed : C.forwardSupport
  backwardSupportClosed : C.backwardSupport
  causalSupportClosed : C.causalSupport
  analyticContinuationClosed : C.analyticContinuation
  crossingSymmetryClosed : C.crossingSymmetry

def CausalityClosed (C : CausalityPackage) : Prop :=
  C.forwardSupport ∧ C.backwardSupport ∧ C.causalSupport ∧
  C.analyticContinuation ∧ C.crossingSymmetry

theorem causality_closed_from_evidence (C : CausalityPackage) (E : CausalityEvidence C) :
    CausalityClosed C := by
  exact And.intro E.forwardSupportClosed
    (And.intro E.backwardSupportClosed
      (And.intro E.causalSupportClosed
        (And.intro E.analyticContinuationClosed E.crossingSymmetryClosed)))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse