import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure MandelstamAnalyticityPackage where
  sChannelPoles : Prop
  tChannelPoles : Prop
  uChannelPoles : Prop
  crossingSymmetry : Prop
  fixedTEnergyDispersion : Prop
  fixedUEnergyDispersion : Prop

structure MandelstamAnalyticityEvidence (M : MandelstamAnalyticityPackage) where
  sChannelPolesClosed : M.sChannelPoles
  tChannelPolesClosed : M.tChannelPoles
  uChannelPolesClosed : M.uChannelPoles
  crossingSymmetryClosed : M.crossingSymmetry
  fixedTEnergyDispersionClosed : M.fixedTEnergyDispersion
  fixedUEnergyDispersionClosed : M.fixedUEnergyDispersion

def MandelstamAnalyticityClosed (M : MandelstamAnalyticityPackage) : Prop :=
  M.sChannelPoles ∧ M.tChannelPoles ∧ M.uChannelPoles ∧
  M.crossingSymmetry ∧ M.fixedTEnergyDispersion ∧ M.fixedUEnergyDispersion

theorem mandelstam_analyticity_closed_from_evidence
    (M : MandelstamAnalyticityPackage) (E : MandelstamAnalyticityEvidence M) :
    MandelstamAnalyticityClosed M := by
  exact And.intro E.sChannelPolesClosed
    (And.intro E.tChannelPolesClosed
      (And.intro E.uChannelPolesClosed
        (And.intro E.crossingSymmetryClosed
          (And.intro E.fixedTEnergyDispersionClosed E.fixedUEnergyDispersionClosed))))

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse