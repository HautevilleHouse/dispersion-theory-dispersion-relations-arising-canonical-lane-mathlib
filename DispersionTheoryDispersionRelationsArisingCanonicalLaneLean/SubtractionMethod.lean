import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SubtractionMethodPackage where
  subtractionConstant : Prop
  convergenceAtInfinity : Prop
  finiteEnergySumRule : Prop
  subtractionConstantTerm : subtractionConstant
  convergenceAtInfinityTerm : convergenceAtInfinity
  finiteEnergySumRuleTerm : finiteEnergySumRule

structure SubtractionMethodEvidence (P : SubtractionMethodPackage) where
  subtractionConstantClosed : P.subtractionConstant
  convergenceAtInfinityClosed : P.convergenceAtInfinity
  finiteEnergySumRuleClosed : P.finiteEnergySumRule

def SubtractionMethodClosed (P : SubtractionMethodPackage) : Prop :=
  P.subtractionConstant ∧ P.convergenceAtInfinity ∧ P.finiteEnergySumRule

theorem subtraction_method_closed_from_evidence
    (P : SubtractionMethodPackage) (E : SubtractionMethodEvidence P) :
    SubtractionMethodClosed P := by
  exact And.intro E.subtractionConstantClosed
    (And.intro E.convergenceAtInfinityClosed E.finiteEnergySumRuleClosed)

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse