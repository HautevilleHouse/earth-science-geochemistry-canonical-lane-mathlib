import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure IsotopeFractionationPackage where
  massDependentFractionation : Prop
  massIndependentFractionation : Prop
  equilibriumFractionation : Prop
  kineticFractionation : Prop
  deltaValue : Prop
  fractionationFactor : Prop
  stableIsotopeRatio : Prop
  radiogenicIsotope : Prop

structure IsotopeFractionationEvidence (I : IsotopeFractionationPackage) where
  massDependentFractionationClosed : I.massDependentFractionation
  massIndependentFractionationClosed : I.massIndependentFractionation
  equilibriumFractionationClosed : I.equilibriumFractionation
  kineticFractionationClosed : I.kineticFractionation
  deltaValueClosed : I.deltaValue
  fractionationFactorClosed : I.fractionationFactor
  stableIsotopeRatioClosed : I.stableIsotopeRatio
  radiogenicIsotopeClosed : I.radiogenicIsotope

def IsotopeFractionationClosed (I : IsotopeFractionationPackage) : Prop :=
  I.massDependentFractionation ∧ I.massIndependentFractionation ∧ I.equilibriumFractionation ∧
  I.kineticFractionation ∧ I.deltaValue ∧ I.fractionationFactor ∧ I.stableIsotopeRatio ∧ I.radiogenicIsotope

theorem isotope_fractionation_closed_from_evidence (I : IsotopeFractionationPackage) (E : IsotopeFractionationEvidence I) : IsotopeFractionationClosed I := by
  exact And.intro E.massDependentFractionationClosed (And.intro E.massIndependentFractionationClosed (And.intro E.equilibriumFractionationClosed (And.intro E.kineticFractionationClosed (And.intro E.deltaValueClosed (And.intro E.fractionationFactorClosed (And.intro E.stableIsotopeRatioClosed E.radiogenicIsotopeClosed))))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse