import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalCycleTransportPackage where
  reservoirExchangeRates : Prop
  transportPathways : Prop
  timescaleSeparation : Prop
  fluxBalanceConditions : Prop

structure GeochemicalCycleTransportEvidence (C : GeochemicalCycleTransportPackage) where
  reservoirExchangeRatesClosed : C.reservoirExchangeRates
  transportPathwaysClosed : C.transportPathways
  timescaleSeparationClosed : C.timescaleSeparation
  fluxBalanceConditionsClosed : C.fluxBalanceConditions

def GeochemicalCycleTransportClosed (C : GeochemicalCycleTransportPackage) : Prop :=
  C.reservoirExchangeRates ∧ C.transportPathways ∧ C.timescaleSeparation ∧ C.fluxBalanceConditions

theorem geochemical_cycle_transport_closed_from_evidence (C : GeochemicalCycleTransportPackage)
    (E : GeochemicalCycleTransportEvidence C) : GeochemicalCycleTransportClosed C := by
  exact And.intro E.reservoirExchangeRatesClosed
    (And.intro E.transportPathwaysClosed
      (And.intro E.timescaleSeparationClosed E.fluxBalanceConditionsClosed))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse