import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure MineralWeatheringKineticsPackage where
  surfaceComplexationRates : Prop
  dissolutionMechanisms : Prop
  rateLawLanguage : Prop
  temperaturePressureDependence : Prop

structure MineralWeatheringKineticsEvidence (K : MineralWeatheringKineticsPackage) where
  surfaceComplexationRatesClosed : K.surfaceComplexationRates
  dissolutionMechanismsClosed : K.dissolutionMechanisms
  rateLawLanguageClosed : K.rateLawLanguage
  temperaturePressureDependenceClosed : K.temperaturePressureDependence

def MineralWeatheringKineticsClosed (K : MineralWeatheringKineticsPackage) : Prop :=
  K.surfaceComplexationRates ∧ K.dissolutionMechanisms ∧ K.rateLawLanguage ∧ K.temperaturePressureDependence

theorem mineral_weathering_kinetics_closed_from_evidence (K : MineralWeatheringKineticsPackage)
    (E : MineralWeatheringKineticsEvidence K) : MineralWeatheringKineticsClosed K := by
  exact And.intro E.surfaceComplexationRatesClosed
    (And.intro E.dissolutionMechanismsClosed
      (And.intro E.rateLawLanguageClosed E.temperaturePressureDependenceClosed))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse