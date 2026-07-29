import Mathlib.Topology.Basic

/-!
# Lie Group Package (abstract)
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure LieGroupPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Type v
  groupOperation : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  lieGroupAxioms : Prop
  semisimpleCondition : Prop
  rankCondition : Nat

def LieGroupClosed (G : LieGroupPackage) : Prop :=
  G.lieGroupAxioms ∧ G.semisimpleCondition

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse