import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

structure GeochemicalTransportPackage where
  diffusionEquation : Prop
  advectionTerm : Prop
  reactionSource : Prop
  boundaryConditions : Prop
  numericalSolution : Prop

structure GeochemicalTransportEvidence (G : GeochemicalTransportPackage) where
  diffusionEquationClosed : G.diffusionEquation
  advectionTermClosed : G.advectionTerm
  reactionSourceClosed : G.reactionSource
  boundaryConditionsClosed : G.boundaryConditions
  numericalSolutionClosed : G.numericalSolution

def GeochemicalTransportClosed (G : GeochemicalTransportPackage) : Prop :=
  G.diffusionEquation ∧ G.advectionTerm ∧ G.reactionSource ∧ G.boundaryConditions ∧ G.numericalSolution

theorem geochemical_transport_closed_from_evidence (G : GeochemicalTransportPackage) (E : GeochemicalTransportEvidence G) :
    GeochemicalTransportClosed G := by
  exact And.intro E.diffusionEquationClosed
    (And.intro E.advectionTermClosed
      (And.intro E.reactionSourceClosed
        (And.intro E.boundaryConditionsClosed E.numericalSolutionClosed)))

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse