import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure DispersionRelationPackage where
  fixedEnergyDispersion : Prop
  subtractionConstant : Prop
  boundStatePoles : Prop
  thresholdBranchPoint : Prop
  crossingSymmetricForm : Prop

structure DispersionRelationEvidence (R : DispersionRelationPackage) where
  fixedEnergyDispersionClosed : R.fixedEnergyDispersion
  subtractionConstantClosed : R.subtractionConstant
  boundStatePolesClosed : R.boundStatePoles
  thresholdBranchPointClosed : R.thresholdBranchPoint
  crossingSymmetricFormClosed : R.crossingSymmetricForm

def DispersionRelationClosed (R : DispersionRelationPackage) : Prop :=
  R.fixedEnergyDispersion ∧ R.subtractionConstant ∧ R.boundStatePoles ∧
  R.thresholdBranchPoint ∧ R.crossingSymmetricForm

theorem dispersion_relation_closed_from_evidence
    (R : DispersionRelationPackage) (E : DispersionRelationEvidence R) :
    DispersionRelationClosed R := by
  exact And.intro E.fixedEnergyDispersionClosed
    (And.intro E.subtractionConstantClosed
      (And.intro E.boundStatePolesClosed
        (And.intro E.thresholdBranchPointClosed E.crossingSymmetricFormClosed)))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse