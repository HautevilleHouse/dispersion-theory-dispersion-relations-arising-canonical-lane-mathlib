import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure CrossingSymmetryPackage where
  amplitudeExchange : Type u
  crossingRelation : Prop
  analyticContinuationToCrossedChannel : Prop
  poleStructurePreserved : Prop

structure CrossingSymmetryEvidence (C : CrossingSymmetryPackage) where
  crossingRelationClosed : C.crossingRelation
  analyticContinuationToCrossedChannelClosed : C.analyticContinuationToCrossedChannel
  poleStructurePreservedClosed : C.poleStructurePreserved

def CrossingSymmetryClosed (C : CrossingSymmetryPackage) : Prop :=
  C.crossingRelation ∧ C.analyticContinuationToCrossedChannel ∧ C.poleStructurePreserved

theorem crossing_symmetry_closed_from_evidence (C : CrossingSymmetryPackage) (E : CrossingSymmetryEvidence C) : CrossingSymmetryClosed C := by
  exact And.intro E.crossingRelationClosed (And.intro E.analyticContinuationToCrossedChannelClosed E.poleStructurePreservedClosed)

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse