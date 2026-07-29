import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure DispersionRelationRepresentationPackage where
  spectralFunction : Type u
  subtractionConstant : Type v
  integralRepresentation : Prop
  convergenceCondition : Prop
  subtractionPolynomialDegree : Nat

structure DispersionRelationRepresentationEvidence (D : DispersionRelationRepresentationPackage) where
  integralRepresentationClosed : D.integralRepresentation
  convergenceConditionClosed : D.convergenceCondition

def DispersionRelationRepresentationClosed (D : DispersionRelationRepresentationPackage) : Prop :=
  D.integralRepresentation ∧ D.convergenceCondition

theorem dispersion_relation_representation_closed_from_evidence (D : DispersionRelationRepresentationPackage) (E : DispersionRelationRepresentationEvidence D) : DispersionRelationRepresentationClosed D := by
  exact And.intro E.integralRepresentationClosed E.convergenceConditionClosed

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse