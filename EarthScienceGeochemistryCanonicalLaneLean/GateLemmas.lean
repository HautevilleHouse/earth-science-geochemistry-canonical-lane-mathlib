import EarthScienceGeochemistryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

def gateClosed (A : EarthScienceGeochemistryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EarthScienceGeochemistryAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse