import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SubtractionConstantsPackage where
  subtractionCount : Prop
  polynomialSubtraction : Type u
  finiteEnergySumRule : Prop
  subtractionCountTerm : subtractionCount
  polynomialSubtractionDefined : polynomialSubtraction
  finiteEnergySumRuleTerm : finiteEnergySumRule

structure SubtractionConstantsEvidence (S : SubtractionConstantsPackage) where
  subtractionCountClosed : S.subtractionCount
  finiteEnergySumRuleClosed : S.finiteEnergySumRule

def SubtractionConstantsClosed (S : SubtractionConstantsPackage) : Prop :=
  S.subtractionCount ∧ S.finiteEnergySumRule

theorem subtraction_constants_closed_from_evidence (S : SubtractionConstantsPackage)
    (E : SubtractionConstantsEvidence S) : SubtractionConstantsClosed S := by
  exact And.intro E.subtractionCountClosed E.finiteEnergySumRuleClosed

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse