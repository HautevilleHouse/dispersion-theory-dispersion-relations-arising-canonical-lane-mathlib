import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure FixedTDispersionRelationPackage where
  kinematicsFixed : Prop
  partialWaveExpansion : Prop
  dispersionRelationAtFixedT : Prop
  analyticContinuationInS : Prop
  crossingConstraints : Prop

structure FixedTDispersionRelationEvidence (F : FixedTDispersionRelationPackage) where
  kinematicsFixedClosed : F.kinematicsFixed
  partialWaveExpansionClosed : F.partialWaveExpansion
  dispersionRelationAtFixedTClosed : F.dispersionRelationAtFixedT
  analyticContinuationInSClosed : F.analyticContinuationInS
  crossingConstraintsClosed : F.crossingConstraints

def FixedTDispersionRelationClosed (F : FixedTDispersionRelationPackage) : Prop :=
  F.kinematicsFixed ∧ F.partialWaveExpansion ∧
  F.dispersionRelationAtFixedT ∧ F.analyticContinuationInS ∧
  F.crossingConstraints

theorem fixed_t_dispersion_relation_closed_from_evidence
    (F : FixedTDispersionRelationPackage) (E : FixedTDispersionRelationEvidence F) :
    FixedTDispersionRelationClosed F := by
  exact And.intro E.kinematicsFixedClosed
    (And.intro E.partialWaveExpansionClosed
      (And.intro E.dispersionRelationAtFixedTClosed
        (And.intro E.analyticContinuationInSClosed E.crossingConstraintsClosed)))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse