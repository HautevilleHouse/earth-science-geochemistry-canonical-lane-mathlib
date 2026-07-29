import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure EarthSystemModel where
  lithosphere : Prop
  hydrosphere : Prop
  atmosphere : Prop
  biosphere : Prop
  carbonCycle : Prop
  silicateWeathering : Prop
  volcanism : Prop
  metamorphism : Prop
  subduction : Prop

structure EarthSystemEvidence (M : EarthSystemModel) where
  lithosphereClosed : M.lithosphere
  hydrosphereClosed : M.hydrosphere
  atmosphereClosed : M.atmosphere
  biosphereClosed : M.biosphere
  carbonCycleClosed : M.carbonCycle
  silicateWeatheringClosed : M.silicateWeathering
  volcanismClosed : M.volcanism
  metamorphismClosed : M.metamorphism
  subductionClosed : M.subduction

def EarthSystemClosed (M : EarthSystemModel) : Prop :=
  M.lithosphere ∧ M.hydrosphere ∧ M.atmosphere ∧ M.biosphere ∧
  M.carbonCycle ∧ M.silicateWeathering ∧ M.volcanism ∧ M.metamorphism ∧ M.subduction

theorem earth_system_closed_from_evidence (M : EarthSystemModel) (E : EarthSystemEvidence M) : EarthSystemClosed M := by
  exact And.intro E.lithosphereClosed (And.intro E.hydrosphereClosed (And.intro E.atmosphereClosed (And.intro E.biosphereClosed (And.intro E.carbonCycleClosed (And.intro E.silicateWeatheringClosed (And.intro E.volcanismClosed (And.intro E.metamorphismClosed E.subductionClosed)))))))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse