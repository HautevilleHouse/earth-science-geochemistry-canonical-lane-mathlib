import EarthScienceGeochemistryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeochemistryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeochemicalSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  aqueousPhase : Prop
  mineralPhase : Prop
  equilibriumConstant : Prop

structure GeochemistryAdmittedObject where
  system : GeochemicalSystem
  closedSystem : Prop
  massBalanced : Prop
  reactionModel : Type
  reactionDynamics : TopologicalSpace reactionModel
  satisfiesDetailedBalance : Prop
  conclusion : satisfiesDetailedBalance

structure GeochemistryEndgameState where
  object : GeochemistryAdmittedObject

def GeochemistryWitnessClosed (O : GeochemistryAdmittedObject) : Prop :=
  O.satisfiesDetailedBalance

end EarthScienceGeochemistryCanonicalLaneLean
end HautevilleHouse