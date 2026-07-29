import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure BiogeochemicalCyclingPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  phosphorusCycle : Prop
  sulfurCycle : Prop
  oceanAcidification : Prop
  primaryProduction : Prop
  decomposition : Prop
  sedimentation : Prop

structure BiogeochemicalCyclingEvidence (B : BiogeochemicalCyclingPackage) where
  carbonCycleClosed : B.carbonCycle
  nitrogenCycleClosed : B.nitrogenCycle
  phosphorusCycleClosed : B.phosphorusCycle
  sulfurCycleClosed : B.sulfurCycle
  oceanAcidificationClosed : B.oceanAcidification
  primaryProductionClosed : B.primaryProduction
  decompositionClosed : B.decomposition
  sedimentationClosed : B.sedimentation

def BiogeochemicalCyclingClosed (B : BiogeochemicalCyclingPackage) : Prop :=
  B.carbonCycle ∧ B.nitrogenCycle ∧ B.phosphorusCycle ∧ B.sulfurCycle ∧
  B.oceanAcidification ∧ B.primaryProduction ∧ B.decomposition ∧ B.sedimentation

theorem biogeochemical_cycling_closed_from_evidence (B : BiogeochemicalCyclingPackage) (E : BiogeochemicalCyclingEvidence B) : BiogeochemicalCyclingClosed B := by
  exact And.intro E.carbonCycleClosed (And.intro E.nitrogenCycleClosed (And.intro E.phosphorusCycleClosed (And.intro E.sulfurCycleClosed (And.intro E.oceanAcidificationClosed (And.intro E.primaryProductionClosed (And.intro E.decompositionClosed E.sedimentationClosed))))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse