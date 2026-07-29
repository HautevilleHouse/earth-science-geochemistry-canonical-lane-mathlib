import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochemistryCanonicalLaneLean.GeochemistryAdmissibleClass

/-!
# Thermodynamic Equilibrium Package
-/

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure ThermodynamicEquilibriumPackage (A : AdmissibleClass) where
  gibbsFreeEnergy : Float
  enthalpy : Float
  entropy : Float
  equilibriumCondition : Prop
  spontaneousDirection : Prop

def ThermodynamicEquilibriumClosed (A : AdmissibleClass) (T : ThermodynamicEquilibriumPackage A) : Prop :=
  T.equilibriumCondition ∧ T.spontaneousDirection

theorem thermodynamic_equilibrium_closed_from_package (A : AdmissibleClass) (T : ThermodynamicEquilibriumPackage A) :
    ThermodynamicEquilibriumClosed A T := by
  exact And.intro T.equilibriumCondition T.spontaneousDirection

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse