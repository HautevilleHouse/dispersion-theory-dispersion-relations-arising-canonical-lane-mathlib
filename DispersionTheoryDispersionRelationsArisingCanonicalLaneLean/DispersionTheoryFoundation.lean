import canonicalLaneMathlib.AdmissibleClass
import DispersionAmplitude
import AnalyticityDomain
import UnitarityBounds
import SubtractionConstants

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure DispersionTheoryFoundation where
  amplitude : DispersionAmplitudePackage
  analyticity : AnalyticityDomainPackage
  unitarity : UnitarityBoundsPackage
  subtraction : SubtractionConstantsPackage
  dispersionRelationDerived : Prop
  crossSectionSumRule : Prop
  amplitudeEvidence : DispersionAmplitudeEvidence amplitude
  analyticityEvidence : AnalyticityDomainEvidence analyticity
  unitarityEvidence : UnitarityBoundsEvidence unitarity
  subtractionEvidence : SubtractionConstantsEvidence subtraction
  dispersionRelationDerivedTerm : dispersionRelationDerived
  crossSectionSumRuleTerm : crossSectionSumRule

def DispersionTheoryFoundationClosed (F : DispersionTheoryFoundation) : Prop :=
  DispersionAmplitudeClosed F.amplitude ∧
  AnalyticityDomainClosed F.analyticity ∧
  UnitarityBoundsClosed F.unitarity ∧
  SubtractionConstantsClosed F.subtraction ∧
  F.dispersionRelationDerived ∧
  F.crossSectionSumRule

theorem dispersion_theory_foundation_closed_from_evidence
    (F : DispersionTheoryFoundation) : DispersionTheoryFoundationClosed F := by
  have hA : DispersionAmplitudeClosed F.amplitude :=
    dispersion_amplitude_closed_from_evidence F.amplitude F.amplitudeEvidence
  have hAn : AnalyticityDomainClosed F.analyticity :=
    analyticity_domain_closed_from_evidence F.analyticity F.analyticityEvidence
  have hU : UnitarityBoundsClosed F.unitarity :=
    unitarity_bounds_closed_from_evidence F.unitarity F.unitarityEvidence
  have hS : SubtractionConstantsClosed F.subtraction :=
    subtraction_constants_closed_from_evidence F.subtraction F.subtractionEvidence
  exact And.intro hA (And.intro hAn (And.intro hU (And.intro hS
    (And.intro F.dispersionRelationDerivedTerm F.crossSectionSumRuleTerm))))

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse