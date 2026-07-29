import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure ForwardDispersionRelationPackage where
  energy : Type u
  momentum : Type v
  forwardAmplitude : energy → momentum → ℂ
  analyticInUpperHalfPlane : Prop
  crossingSymmetry : Prop

def ForwardDispersionRelationClosed (F : ForwardDispersionRelationPackage) : Prop :=
  F.analyticInUpperHalfPlane ∧ F.crossingSymmetry

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse