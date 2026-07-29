import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure IsotopeGeochemistryPackage where
  fractionationFactor : Prop
  radioactiveDecay : Prop
  radiogenicIngrowth : Prop
  closureTemperature : Prop
  geochronometerCalibration : Prop

structure IsotopeGeochemistryEvidence (I : IsotopeGeochemistryPackage) where
  fractionationFactorClosed : I.fractionationFactor
  radioactiveDecayClosed : I.radioactiveDecay
  radiogenicIngrowthClosed : I.radiogenicIngrowth
  closureTemperatureClosed : I.closureTemperature
  geochronometerCalibrationClosed : I.geochronometerCalibration

def IsotopeGeochemistryClosed (I : IsotopeGeochemistryPackage) : Prop :=
  I.fractionationFactor ∧ I.radioactiveDecay ∧ I.radiogenicIngrowth ∧ I.closureTemperature ∧ I.geochronometerCalibration

theorem isotope_geochemistry_closed_from_evidence (I : IsotopeGeochemistryPackage) (E : IsotopeGeochemistryEvidence I) :
    IsotopeGeochemistryClosed I := by
  exact And.intro E.fractionationFactorClosed
    (And.intro E.radioactiveDecayClosed
      (And.intro E.radiogenicIngrowthClosed
        (And.intro E.closureTemperatureClosed E.geochronometerCalibrationClosed)))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse