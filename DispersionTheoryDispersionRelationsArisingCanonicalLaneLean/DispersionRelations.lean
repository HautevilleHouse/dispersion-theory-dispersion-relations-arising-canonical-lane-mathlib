import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure CrossSectionDispersionRelation where
  energy : Type u
  momentum : Type v
  crossSection : energy → momentum → Prop
  analyticProperty : Prop
  dispersionRelationSatisfied : Prop
  analyticPropertyTerm : analyticProperty
  dispersionRelationSatisfiedTerm : dispersionRelationSatisfied

structure DispersionRelationsPackage where
  forwardScatteringAmplitude : Prop
  crossingSymmetry : Prop
  partialWaveExpansion : Prop
  forwardScatteringAmplitudeTerm : forwardScatteringAmplitude
  crossingSymmetryTerm : crossingSymmetry
  partialWaveExpansionTerm : partialWaveExpansion

structure DispersionRelationsEvidence (P : DispersionRelationsPackage) where
  forwardScatteringAmplitudeClosed : P.forwardScatteringAmplitude
  crossingSymmetryClosed : P.crossingSymmetry
  partialWaveExpansionClosed : P.partialWaveExpansion

def DispersionRelationsClosed (P : DispersionRelationsPackage) : Prop :=
  P.forwardScatteringAmplitude ∧ P.crossingSymmetry ∧ P.partialWaveExpansion

theorem dispersion_relations_closed_from_evidence
    (P : DispersionRelationsPackage) (E : DispersionRelationsEvidence P) :
    DispersionRelationsClosed P := by
  exact And.intro E.forwardScatteringAmplitudeClosed
    (And.intro E.crossingSymmetryClosed E.partialWaveExpansionClosed)

end HautevilleHouse.DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse