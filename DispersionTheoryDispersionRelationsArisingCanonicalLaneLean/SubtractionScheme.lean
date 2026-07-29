import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SubtractionSchemePackage where
  subtractionCount : ℕ
  convergenceImprovement : Prop
  subtractedDispersionRelation : Prop
  remainingSubtractionAmbiguity : Prop
  phenomenologicalInput : Prop

structure SubtractionSchemeEvidence (S : SubtractionSchemePackage) where
  convergenceImprovementClosed : S.convergenceImprovement
  subtractedDispersionRelationClosed : S.subtractedDispersionRelation
  remainingSubtractionAmbiguityClosed : S.remainingSubtractionAmbiguity
  phenomenologicalInputClosed : S.phenomenologicalInput

def SubtractionSchemeClosed (S : SubtractionSchemePackage) : Prop :=
  S.convergenceImprovement ∧ S.subtractedDispersionRelation ∧
  S.remainingSubtractionAmbiguity ∧ S.phenomenologicalInput

theorem subtraction_scheme_closed_from_evidence
    (S : SubtractionSchemePackage) (E : SubtractionSchemeEvidence S) :
    SubtractionSchemeClosed S := by
  exact And.intro E.convergenceImprovementClosed
    (And.intro E.subtractedDispersionRelationClosed
      (And.intro E.remainingSubtractionAmbiguityClosed E.phenomenologicalInputClosed))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse