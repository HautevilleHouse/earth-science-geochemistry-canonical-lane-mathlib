import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemistryAdmittedObject where
  system : Type
  equilibriumState : Prop
  closureCondition : Prop
  conclusion : closureCondition

structure GeochemistryEndgameState where
  object : GeochemistryAdmittedObject

def GeochemistryWitnessClosed (O : GeochemistryAdmittedObject) : Prop :=
  O.closureCondition

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse
