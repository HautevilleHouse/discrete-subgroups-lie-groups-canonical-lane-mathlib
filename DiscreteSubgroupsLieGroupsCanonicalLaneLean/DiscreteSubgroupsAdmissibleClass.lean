import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure DiscreteSubgroupAdmittedObject where
  G : Type u
  [top : TopologicalSpace G]
  [group : Group G]
  [lieGroup : LieGroup G]
  Gamma : Subgroup G
  discreteTopology : DiscreteTopology (Gamma)
  latticeCondition : Prop
  covolumeFinite : Prop
  conclusion : latticeCondition ∧ covolumeFinite

structure AdmissibleClass where
  object : DiscreteSubgroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteSubgroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
