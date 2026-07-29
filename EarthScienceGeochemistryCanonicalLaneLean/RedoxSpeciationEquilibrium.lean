import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure RedoxSpeciationEquilibriumPackage where
  electronActivityScale : Prop
  pe_pH_Diagrams : Prop
  dominantSpeciesTransition : Prop
  halfCellCoupled : Prop

structure RedoxSpeciationEquilibriumEvidence (R : RedoxSpeciationEquilibriumPackage) where
  electronActivityScaleClosed : R.electronActivityScale
  pe_pH_DiagramsClosed : R.pe_pH_Diagrams
  dominantSpeciesTransitionClosed : R.dominantSpeciesTransition
  halfCellCoupledClosed : R.halfCellCoupled

def RedoxSpeciationEquilibriumClosed (R : RedoxSpeciationEquilibriumPackage) : Prop :=
  R.electronActivityScale ∧ R.pe_pH_Diagrams ∧ R.dominantSpeciesTransition ∧ R.halfCellCoupled

theorem redox_speciation_equilibrium_closed_from_evidence (R : RedoxSpeciationEquilibriumPackage)
    (E : RedoxSpeciationEquilibriumEvidence R) : RedoxSpeciationEquilibriumClosed R := by
  exact And.intro E.electronActivityScaleClosed
    (And.intro E.pe_pH_DiagramsClosed
      (And.intro E.dominantSpeciesTransitionClosed E.halfCellCoupledClosed))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse