import EarthScienceGeochemistryCanonicalLaneLean.GeochemistryRoute

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure AqueousGeochemistryCertificate (G : GeochemicalSystem) where
  equilibriumConstantDefined : Prop
  massActionLawApplied : Prop
  speciationComputed : Prop
  activityCorrection : Prop
  equilibriumConstantClosed : equilibriumConstantDefined
  massActionLawClosed : massActionLawApplied
  speciationComputedClosed : speciationComputed
  activityCorrectionClosed : activityCorrection
  aqueousEvidence : AqueousGeochemistryEvidence G

def AqueousGeochemistryCertificateClosed {G : GeochemicalSystem}
    (C : AqueousGeochemistryCertificate G) : Prop :=
  C.equilibriumConstantDefined ∧
  C.massActionLawApplied ∧
  C.speciationComputed ∧
  C.activityCorrection ∧
  AqueousGeochemistryClosed G

theorem aqueous_geochemistry_certificate_closed
    {G : GeochemicalSystem} (C : AqueousGeochemistryCertificate G) :
    AqueousGeochemistryCertificateClosed C := by
  exact And.intro C.equilibriumConstantClosed
    (And.intro C.massActionLawClosed
      (And.intro C.speciationComputedClosed
        (And.intro C.activityCorrectionClosed
          (aqueous_geochemistry_closed_from_evidence G C.aqueousEvidence))))

structure MineralReactionCertificate {G : GeochemicalSystem}
    (A : AqueousGeochemistryPackage G) where
  dissolutionRate : Prop
  precipitationRate : Prop
  equilibriumSaturation : Prop
  surfaceComplexation : Prop
  dissolutionRateClosed : dissolutionRate
  precipitationRateClosed : precipitationRate
  equilibriumSaturationClosed : equilibriumSaturation
  surfaceComplexationClosed : surfaceComplexation
  mineralEvidence : MineralReactionEvidence A

def MineralReactionCertificateClosed {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} (M : MineralReactionCertificate A) : Prop :=
  M.dissolutionRate ∧
  M.precipitationRate ∧
  M.equilibriumSaturation ∧
  M.surfaceComplexation ∧
  MineralReactionClosed A

theorem mineral_reaction_certificate_closed
    {G : GeochemicalSystem} {A : AqueousGeochemistryPackage G}
    (M : MineralReactionCertificate A) : MineralReactionCertificateClosed M := by
  exact And.intro M.dissolutionRateClosed
    (And.intro M.precipitationRateClosed
      (And.intro M.equilibriumSaturationClosed
        (And.intro M.surfaceComplexationClosed
          (mineral_reaction_closed_from_evidence A M.mineralEvidence))))

structure RedoxCertificate {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    (R : RedoxPackage M) where
  redoxPotential : Prop
  electronActivity : Prop
  pePhRelation : Prop
  redoxPotentialClosed : redoxPotential
  electronActivityClosed : electronActivity
  pePhRelationClosed : pePhRelation
  redoxEvidence : RedoxEvidence R

def RedoxCertificateClosed {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    {R : RedoxPackage M} (C : RedoxCertificate R) : Prop :=
  C.redoxPotential ∧
  C.electronActivity ∧
  C.pePhRelation ∧
  RedoxClosed R

theorem redox_certificate_closed
    {G : GeochemicalSystem} {A : AqueousGeochemistryPackage G}
    {M : MineralReactionPackage A} {R : RedoxPackage M}
    (C : RedoxCertificate R) : RedoxCertificateClosed C := by
  exact And.intro C.redoxPotentialClosed
    (And.intro C.electronActivityClosed
      (And.intro C.pePhRelationClosed
        (redox_closed_from_evidence R C.redoxEvidence)))

structure IsotopeFractionationCertificate {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    {R : RedoxPackage M} (I : IsotopeFractionationPackage R) where
  fractionationFactor : Prop
  equilibriumFractionation : Prop
  kineticFractionation : Prop
  fractionationFactorClosed : fractionationFactor
  equilibriumFractionationClosed : equilibriumFractionation
  kineticFractionationClosed : kineticFractionation
  isotopeEvidence : IsotopeFractionationEvidence I

def IsotopeFractionationCertificateClosed {G : GeochemicalSystem}
    {A : AqueousGeochemistryPackage G} {M : MineralReactionPackage A}
    {R : RedoxPackage M} {I : IsotopeFractionationPackage R}
    (C : IsotopeFractionationCertificate I) : Prop :=
  C.fractionationFactor ∧
  C.equilibriumFractionation ∧
  C.kineticFractionation ∧
  IsotopeFractionationClosed I

theorem isotope_fractionation_certificate_closed
    {G : GeochemicalSystem} {A : AqueousGeochemistryPackage G}
    {M : MineralReactionPackage A} {R : RedoxPackage M}
    {I : IsotopeFractionationPackage R} (C : IsotopeFractionationCertificate I) :
    IsotopeFractionationCertificateClosed C := by
  exact And.intro C.fractionationFactorClosed
    (And.intro C.equilibriumFractionationClosed
      (And.intro C.kineticFractionationClosed
        (isotope_fractionation_closed_from_evidence I C.isotopeEvidence)))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse