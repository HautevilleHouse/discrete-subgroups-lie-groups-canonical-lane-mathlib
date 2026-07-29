import DiscreteSubgroupsLieGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LieGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  lieGroupStructure : Type

structure DiscreteSubgroupAdmittedObject where
  space : LieGroupSpace
  discreteSubgroup : Type
  subgroupIsDiscrete : Prop
  latticeInLieGroup : Prop
  conclusion : latticeInLieGroup

structure DiscreteSubgroupEndgameState where
  object : DiscreteSubgroupAdmittedObject

def DiscreteSubgroupWitnessClosed (O : DiscreteSubgroupAdmittedObject) : Prop :=
  O.latticeInLieGroup

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse