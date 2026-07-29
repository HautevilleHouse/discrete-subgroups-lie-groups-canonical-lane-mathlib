import DiscreteSubgroupsLieGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def subgroupProjection : Projection DiscreteSubgroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem subgroup_projection_idempotent (x : DiscreteSubgroupEndgameState) :
    subgroupProjection.toFun (subgroupProjection.toFun x) = subgroupProjection.toFun x := by
  exact subgroupProjection.idempotent x

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse