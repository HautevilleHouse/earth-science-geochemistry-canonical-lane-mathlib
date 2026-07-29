import EarthScienceGeochemistryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

def ConstrainedGeochemistryClosure (A : EarthScienceGeochemistryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geochemistry_endgame (A : EarthScienceGeochemistryAdmissibleClass) : ConstrainedGeochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse