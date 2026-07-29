import EarthScienceGeochemistryCanonicalLaneLean.AnalyticProof

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure AqueousGeochemistryEvidenceTerms {G : GeochemicalSystem}
    (C : AqueousGeochemistryCertificate G) where
  equilibriumConstantDefined : C.equilibriumConstantDefined
  massActionLawApplied : C.massActionLawApplied
  speciationComputed : C.speciationComputed
  activityCorrection : C.activityCorrection
  aqueousGeochemistryClosed : AqueousGeochemistryClosed G

def AqueousGeochemistryCertificate.evidenceTerms {G : GeochemicalSystem}
    (C : AqueousGeochemistryCertificate G) : AqueousGeochemistryEvidenceTerms C :=
  {
    equilibriumConstantDefined := C.equilibriumConstantClosed
    massActionLawApplied := C.massActionLawClosed
    speciationComputed := C.speciationComputedClosed
    activityCorrection := C.activityCorrectionClosed
    aqueousGeochemistryClosed := aqueous_geochemistry_closed_from_evidence G C.aqueousEvidence
  }

structure MineralReactionEvidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} (M : MineralReactionPackage A) where
  dissolutionRate : M.dissolutionRate
  precipitationRate : M.precipitationRate
  equilibriumSaturation : M.equilibriumSaturation
  surfaceComplexation : M.surfaceComplexation
  mineralReactionClosed : MineralReactionClosed M

def MineralReactionPackage.evidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} (M : MineralReactionPackage A) : MineralReactionEvidenceTerms M :=
  {
    dissolutionRate := M.dissolutionRateClosed
    precipitationRate := M.precipitationRateClosed
    equilibriumSaturation := M.equilibriumSaturationClosed
    surfaceComplexation := M.surfaceComplexationClosed
    mineralReactionClosed := mineral_reaction_closed_from_evidence M M.mineralEvidence
  }

structure RedoxEvidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    (R : RedoxPackage M) where
  redoxPotential : R.redoxPotential
  electronActivity : R.electronActivity
  pePhRelation : R.pePhRelation
  redoxClosed : RedoxClosed R

def RedoxPackage.evidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    (R : RedoxPackage M) : RedoxEvidenceTerms R :=
  {
    redoxPotential := R.redoxPotentialClosed
    electronActivity := R.electronActivityClosed
    pePhRelation := R.pePhRelationClosed
    redoxClosed := redox_closed_from_evidence R R.redoxEvidence
  }

structure IsotopeFractionationEvidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    {R : RedoxPackage M} (I : IsotopeFractionationPackage R) where
  fractionationFactor : I.fractionationFactor
  equilibriumFractionation : I.equilibriumFractionation
  kineticFractionation : I.kineticFractionation
  isotopeClosed : IsotopeFractionationClosed I

def IsotopeFractionationPackage.evidenceTerms {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    {R : RedoxPackage M} (I : IsotopeFractionationPackage R) : IsotopeFractionationEvidenceTerms I :=
  {
    fractionationFactor := I.fractionationFactorClosed
    equilibriumFractionation := I.equilibriumFractionationClosed
    kineticFractionation := I.kineticFractionationClosed
    isotopeClosed := isotope_fractionation_closed_from_evidence I I.isotopeEvidence
  }

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse