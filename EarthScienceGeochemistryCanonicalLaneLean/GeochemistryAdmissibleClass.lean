import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemistryAdmittedObject where
  sampleId : String
  elementConcentrations : List (String × Float)
  thermodynamicData : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : GeochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeochemistryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse