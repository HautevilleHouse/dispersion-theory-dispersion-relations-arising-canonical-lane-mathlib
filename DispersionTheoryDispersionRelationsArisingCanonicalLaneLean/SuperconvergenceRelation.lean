import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingCanonicalLaneLean

structure SuperconvergenceRelationPackage where
  energyVariable : Type u
  amplitude : energyVariable → ℂ
  highEnergyBehavior : Prop
  sumRule : Prop
  finiteEnergySumRule : energyVariable → ℂ

def SuperconvergenceRelationClosed (S : SuperconvergenceRelationPackage) : Prop :=
  S.highEnergyBehavior ∧ S.sumRule

end DispersionTheoryDispersionRelationsArisingCanonicalLaneLean
end HautevilleHouse