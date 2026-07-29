import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure MineralFormationPackage where
  nucleation : Prop
  crystalGrowth : Prop
  phaseDiagram : Prop
  solidSolution : Prop
  dissolutionPrecipitation : Prop
  metamorphicReactions : Prop
  nucleationClosed : nucleation
  crystalGrowthClosed : crystalGrowth
  phaseDiagramClosed : phaseDiagram
  solidSolutionClosed : solidSolution
  dissolutionPrecipitationClosed : dissolutionPrecipitation
  metamorphicReactionsClosed : metamorphicReactions

structure MineralFormationEvidence (P : MineralFormationPackage) where
  nucleationClosed : P.nucleation
  crystalGrowthClosed : P.crystalGrowth
  phaseDiagramClosed : P.phaseDiagram
  solidSolutionClosed : P.solidSolution
  dissolutionPrecipitationClosed : P.dissolutionPrecipitation
  metamorphicReactionsClosed : P.metamorphicReactions

def MineralFormationClosed (P : MineralFormationPackage) : Prop :=
  P.nucleation ∧ P.crystalGrowth ∧ P.phaseDiagram ∧ P.solidSolution ∧ P.dissolutionPrecipitation ∧ P.metamorphicReactions

theorem mineral_formation_closed_from_evidence (P : MineralFormationPackage) (E : MineralFormationEvidence P) :
    MineralFormationClosed P := by
  exact And.intro E.nucleationClosed (And.intro E.crystalGrowthClosed (And.intro E.phaseDiagramClosed (And.intro E.solidSolutionClosed (And.intro E.dissolutionPrecipitationClosed E.metamorphicReactionsClosed))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse