import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  gibbsFreeEnergyRelation : Prop
  temperatureEffect : Prop
  pressureEffect : Prop
  equilibriumConstantClosed : equilibriumConstant
  leChatelierPrincipleClosed : leChatelierPrinciple
  reactionQuotientClosed : reactionQuotient
  gibbsFreeEnergyRelationClosed : gibbsFreeEnergyRelation
  temperatureEffectClosed : temperatureEffect
  pressureEffectClosed : pressureEffect

structure ChemicalEquilibriumEvidence (P : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : P.equilibriumConstant
  leChatelierPrincipleClosed : P.leChatelierPrinciple
  reactionQuotientClosed : P.reactionQuotient
  gibbsFreeEnergyRelationClosed : P.gibbsFreeEnergyRelation
  temperatureEffectClosed : P.temperatureEffect
  pressureEffectClosed : P.pressureEffect

def ChemicalEquilibriumClosed (P : ChemicalEquilibriumPackage) : Prop :=
  P.equilibriumConstant ∧ P.leChatelierPrinciple ∧ P.reactionQuotient ∧ P.gibbsFreeEnergyRelation ∧ P.temperatureEffect ∧ P.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (P : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence P) :
    ChemicalEquilibriumClosed P := by
  exact And.intro E.equilibriumConstantClosed (And.intro E.leChatelierPrincipleClosed (And.intro E.reactionQuotientClosed (And.intro E.gibbsFreeEnergyRelationClosed (And.intro E.temperatureEffectClosed E.pressureEffectClosed))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse