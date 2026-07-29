import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure FixedTSubstractionPackage where
  fixedTMomentumVariable : Type u
  substractionTerm : ℂ
  subtractedDispersionRelation : Prop
  convergenceSubtracted : Prop

def FixedTSubstractionClosed (F : FixedTSubstractionPackage) : Prop :=
  F.subtractedDispersionRelation ∧ F.convergenceSubtracted

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse