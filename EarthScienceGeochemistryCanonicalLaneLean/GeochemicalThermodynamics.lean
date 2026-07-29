import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalThermodynamicsPackage where
  enthalpy : Prop
  entropy : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  temperatureDependence : Prop
  reactionSpontaneity : Prop
  enthalpyClosed : enthalpy
  entropyClosed : entropy
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  equilibriumConstantClosed : equilibriumConstant
  temperatureDependenceClosed : temperatureDependence
  reactionSpontaneityClosed : reactionSpontaneity

structure GeochemicalThermodynamicsEvidence (P : GeochemicalThermodynamicsPackage) where
  enthalpyClosed : P.enthalpy
  entropyClosed : P.entropy
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  equilibriumConstantClosed : P.equilibriumConstant
  temperatureDependenceClosed : P.temperatureDependence
  reactionSpontaneityClosed : P.reactionSpontaneity

def GeochemicalThermodynamicsClosed (P : GeochemicalThermodynamicsPackage) : Prop :=
  P.enthalpy ∧ P.entropy ∧ P.gibbsFreeEnergy ∧ P.equilibriumConstant ∧ P.temperatureDependence ∧ P.reactionSpontaneity

theorem geochemical_thermodynamics_closed_from_evidence (P : GeochemicalThermodynamicsPackage) (E : GeochemicalThermodynamicsEvidence P) :
    GeochemicalThermodynamicsClosed P := by
  exact And.intro E.enthalpyClosed (And.intro E.entropyClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.equilibriumConstantClosed (And.intro E.temperatureDependenceClosed E.reactionSpontaneityClosed))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse