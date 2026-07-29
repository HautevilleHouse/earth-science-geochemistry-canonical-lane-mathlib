import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure IsotopeFractionationBridge where
  equilibriumFractionation : Prop
  kineticFractionation : Prop
  massDependentLaw : Prop
  tracerIsotopeConstraints : Prop

structure IsotopeFractionationEvidence (B : IsotopeFractionationBridge) where
  equilibriumFractionationClosed : B.equilibriumFractionation
  kineticFractionationClosed : B.kineticFractionation
  massDependentLawClosed : B.massDependentLaw
  tracerIsotopeConstraintsClosed : B.tracerIsotopeConstraints

def IsotopeFractionationClosed (B : IsotopeFractionationBridge) : Prop :=
  B.equilibriumFractionation ∧ B.kineticFractionation ∧ B.massDependentLaw ∧ B.tracerIsotopeConstraints

theorem isotope_fractionation_closed_from_evidence (B : IsotopeFractionationBridge)
    (E : IsotopeFractionationEvidence B) : IsotopeFractionationClosed B := by
  exact And.intro E.equilibriumFractionationClosed
    (And.intro E.kineticFractionationClosed
      (And.intro E.massDependentLawClosed E.tracerIsotopeConstraintsClosed))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse