import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalCyclePackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  sulfurCycle : Prop
  phosphorusCycle : Prop
  waterCycle : Prop
  redoxReactions : Prop
  carbonCycleClosed : carbonCycle
  nitrogenCycleClosed : nitrogenCycle
  sulfurCycleClosed : sulfurCycle
  phosphorusCycleClosed : phosphorusCycle
  waterCycleClosed : waterCycle
  redoxReactionsClosed : redoxReactions

structure GeochemicalCycleEvidence (P : GeochemicalCyclePackage) where
  carbonCycleClosed : P.carbonCycle
  nitrogenCycleClosed : P.nitrogenCycle
  sulfurCycleClosed : P.sulfurCycle
  phosphorusCycleClosed : P.phosphorusCycle
  waterCycleClosed : P.waterCycle
  redoxReactionsClosed : P.redoxReactions

def GeochemicalCycleClosed (P : GeochemicalCyclePackage) : Prop :=
  P.carbonCycle ∧ P.nitrogenCycle ∧ P.sulfurCycle ∧ P.phosphorusCycle ∧ P.waterCycle ∧ P.redoxReactions

theorem geochemical_cycle_closed_from_evidence (P : GeochemicalCyclePackage) (E : GeochemicalCycleEvidence P) :
    GeochemicalCycleClosed P := by
  exact And.intro E.carbonCycleClosed (And.intro E.nitrogenCycleClosed (And.intro E.sulfurCycleClosed (And.intro E.phosphorusCycleClosed (And.intro E.waterCycleClosed E.redoxReactionsClosed))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse