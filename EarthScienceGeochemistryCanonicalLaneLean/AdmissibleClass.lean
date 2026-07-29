import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure EarthScienceGeochemistryAdmittedObject where
  earthSystem : EarthSystemModel
  reactionKinetics : GeochemicalReactionKineticsPackage
  thermodyEquilibrium : ThermodynamicEquilibriumPackage
  isotopeFractionation : IsotopeFractionationPackage
  bioGeoCycling : BiogeochemicalCyclingPackage
  systemIntegrated : Prop

structure EarthScienceGeochemistryAdmissibleClass where
  object : EarthScienceGeochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EarthScienceGeochemistryAdmissibleClass) : Prop :=
  A.object.systemIntegrated ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse