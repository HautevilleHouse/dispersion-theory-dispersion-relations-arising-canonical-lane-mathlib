import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SMatrixPolePackage where
  poleLocation : Type u
  residueType : Type v
  branchCutStructure : Prop
  poleResidueRelation : Prop
  analyticContinuationExists : Prop

structure SMatrixPoleEvidence (P : SMatrixPolePackage) where
  branchCutStructureClosed : P.branchCutStructure
  poleResidueRelationClosed : P.poleResidueRelation
  analyticContinuationExistsClosed : P.analyticContinuationExists

def SMatrixPoleClosed (P : SMatrixPolePackage) : Prop :=
  P.branchCutStructure ∧ P.poleResidueRelation ∧ P.analyticContinuationExists

theorem s_matrix_pole_closed_from_evidence (P : SMatrixPolePackage) (E : SMatrixPoleEvidence P) : SMatrixPoleClosed P := by
  exact And.intro E.branchCutStructureClosed (And.intro E.poleResidueRelationClosed E.analyticContinuationExistsClosed)

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse