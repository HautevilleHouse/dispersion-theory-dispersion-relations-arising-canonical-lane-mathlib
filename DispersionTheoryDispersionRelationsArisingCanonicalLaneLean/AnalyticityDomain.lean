import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure AnalyticityDomainPackage where
  complexPlaneCut : Type u
  physicalRegion : Prop
  crossingSymmetricDomain : Prop
  asymptoticBounds : Prop
  complexPlaneCutDefined : complexPlaneCut
  physicalRegionTerm : physicalRegion
  crossingSymmetricDomainTerm : crossingSymmetricDomain
  asymptoticBoundsTerm : asymptoticBounds

structure AnalyticityDomainEvidence (A : AnalyticityDomainPackage) where
  physicalRegionClosed : A.physicalRegion
  crossingSymmetricDomainClosed : A.crossingSymmetricDomain
  asymptoticBoundsClosed : A.asymptoticBounds

def AnalyticityDomainClosed (A : AnalyticityDomainPackage) : Prop :=
  A.physicalRegion ∧ A.crossingSymmetricDomain ∧ A.asymptoticBounds

theorem analyticity_domain_closed_from_evidence (A : AnalyticityDomainPackage)
    (E : AnalyticityDomainEvidence A) : AnalyticityDomainClosed A := by
  exact And.intro E.physicalRegionClosed
    (And.intro E.crossingSymmetricDomainClosed E.asymptoticBoundsClosed)

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse