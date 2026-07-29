import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalThermodynamicDatabasePackage where
  gibbsFreeEnergyMinimization : Prop
  equilibriumConstantCompilation : Prop
  activityCoefficientModels : Prop
  consistencyByPhaseRule : Prop

structure GeochemicalThermodynamicDatabaseEvidence (D : GeochemicalThermodynamicDatabasePackage) where
  gibbsFreeEnergyMinimizationClosed : D.gibbsFreeEnergyMinimization
  equilibriumConstantCompilationClosed : D.equilibriumConstantCompilation
  activityCoefficientModelsClosed : D.activityCoefficientModels
  consistencyByPhaseRuleClosed : D.consistencyByPhaseRule

def GeochemicalThermodynamicDatabaseClosed (D : GeochemicalThermodynamicDatabasePackage) : Prop :=
  D.gibbsFreeEnergyMinimization ∧ D.equilibriumConstantCompilation ∧ D.activityCoefficientModels ∧ D.consistencyByPhaseRule

theorem geochemical_thermodynamic_database_closed_from_evidence (D : GeochemicalThermodynamicDatabasePackage)
    (E : GeochemicalThermodynamicDatabaseEvidence D) : GeochemicalThermodynamicDatabaseClosed D := by
  exact And.intro E.gibbsFreeEnergyMinimizationClosed
    (And.intro E.equilibriumConstantCompilationClosed
      (And.intro E.activityCoefficientModelsClosed E.consistencyByPhaseRuleClosed))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse