import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure UnitarityBoundsPackage where
  partialWaveExpansion : Type u
  unitarityConstraint : Prop
  positivityBound : Prop
  partialWaveExpansionDefined : partialWaveExpansion
  unitarityConstraintTerm : unitarityConstraint
  positivityBoundTerm : positivityBound

structure UnitarityBoundsEvidence (U : UnitarityBoundsPackage) where
  unitarityConstraintClosed : U.unitarityConstraint
  positivityBoundClosed : U.positivityBound

def UnitarityBoundsClosed (U : UnitarityBoundsPackage) : Prop :=
  U.unitarityConstraint ∧ U.positivityBound

theorem unitarity_bounds_closed_from_evidence (U : UnitarityBoundsPackage)
    (E : UnitarityBoundsEvidence U) : UnitarityBoundsClosed U := by
  exact And.intro E.unitarityConstraintClosed E.positivityBoundClosed

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse