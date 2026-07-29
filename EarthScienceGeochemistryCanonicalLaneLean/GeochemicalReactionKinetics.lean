import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalReactionKineticsPackage where
  reactionRate : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  rateConstant : Prop
  equilibriumConstant : Prop
  forwardReaction : Prop
  backwardReaction : Prop
  rateLaw : Prop

structure GeochemicalReactionKineticsEvidence (K : GeochemicalReactionKineticsPackage) where
  reactionRateClosed : K.reactionRate
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence
  rateConstantClosed : K.rateConstant
  equilibriumConstantClosed : K.equilibriumConstant
  forwardReactionClosed : K.forwardReaction
  backwardReactionClosed : K.backwardReaction
  rateLawClosed : K.rateLaw

def GeochemicalReactionKineticsClosed (K : GeochemicalReactionKineticsPackage) : Prop :=
  K.reactionRate ∧ K.activationEnergy ∧ K.temperatureDependence ∧
  K.rateConstant ∧ K.equilibriumConstant ∧ K.forwardReaction ∧ K.backwardReaction ∧ K.rateLaw

theorem geochemical_reaction_kinetics_closed_from_evidence (K : GeochemicalReactionKineticsPackage) (E : GeochemicalReactionKineticsEvidence K) : GeochemicalReactionKineticsClosed K := by
  exact And.intro E.reactionRateClosed (And.intro E.activationEnergyClosed (And.intro E.temperatureDependenceClosed (And.intro E.rateConstantClosed (And.intro E.equilibriumConstantClosed (And.intro E.forwardReactionClosed (And.intro E.backwardReactionClosed E.rateLawClosed))))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse