import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure UnitarityBoundPackage where
  energy : Type u
  partialWaveAmplitude : energy → ℂ
  unitarityCondition : Prop
  boundOnImaginaryPart : energy → ℝ
  boundSatisfied : Prop

def UnitarityBoundClosed (U : UnitarityBoundPackage) : Prop :=
  U.unitarityCondition ∧ U.boundSatisfied

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse