import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  atomicOrbitals : Prop
  linearCombination : Prop
  bondingAntibonding : Prop
  energyLevels : Prop
  electronConfiguration : Prop
  symmetry : Prop
  atomicOrbitalsClosed : atomicOrbitals
  linearCombinationClosed : linearCombination
  bondingAntibondingClosed : bondingAntibonding
  energyLevelsClosed : energyLevels
  electronConfigurationClosed : electronConfiguration
  symmetryClosed : symmetry

structure MolecularOrbitalTheoryEvidence (P : MolecularOrbitalTheoryPackage) where
  atomicOrbitalsClosed : P.atomicOrbitals
  linearCombinationClosed : P.linearCombination
  bondingAntibondingClosed : P.bondingAntibonding
  energyLevelsClosed : P.energyLevels
  electronConfigurationClosed : P.electronConfiguration
  symmetryClosed : P.symmetry

def MolecularOrbitalTheoryClosed (P : MolecularOrbitalTheoryPackage) : Prop :=
  P.atomicOrbitals ∧ P.linearCombination ∧ P.bondingAntibonding ∧ P.energyLevels ∧ P.electronConfiguration ∧ P.symmetry

theorem molecular_orbital_theory_closed_from_evidence (P : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence P) :
    MolecularOrbitalTheoryClosed P := by
  exact And.intro E.atomicOrbitalsClosed (And.intro E.linearCombinationClosed (And.intro E.bondingAntibondingClosed (And.intro E.energyLevelsClosed (And.intro E.electronConfigurationClosed E.symmetryClosed))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse