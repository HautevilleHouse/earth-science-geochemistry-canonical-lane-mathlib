import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochemistryCanonicalLaneLean.GeochemistryAdmissibleClass

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure ReactionKineticsPackage (A : AdmissibleClass) where
  reactionRates : List (String × Float)
  rateLawEquation : Prop
  activationEnergy : Float
  temperature : Float
  equilibriumConstant : Float

def ReactionKineticsClosed (A : AdmissibleClass) (R : ReactionKineticsPackage A) : Prop :=
  R.rateLawEquation ∧ R.activationEnergy > 0.0

theorem reaction_kinetics_closed_from_package (A : AdmissibleClass) (R : ReactionKineticsPackage A) :
    R.rateLawEquation ∧ R.activationEnergy > 0.0 := by
  exact And.intro R.rateLawEquation (by
    have h : R.activationEnergy > 0.0 := by
      exact R.activationEnergy > 0.0
    exact h)

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse