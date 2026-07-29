import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochemistryCanonicalLaneLean.GeochemistryAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeochemistryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse