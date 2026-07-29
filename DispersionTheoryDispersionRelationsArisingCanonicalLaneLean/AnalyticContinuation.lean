import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure AnalyticContinuationPackage where
  physicalRegion : ℂ
  unphysicalRegion : ℂ
  amplitudePhysical : ℂ → ℂ
  amplitudeContinued : ℂ → ℂ
  continuationProperty : Prop
  branchCutStructure : Prop

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.continuationProperty ∧ A.branchCutStructure

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse