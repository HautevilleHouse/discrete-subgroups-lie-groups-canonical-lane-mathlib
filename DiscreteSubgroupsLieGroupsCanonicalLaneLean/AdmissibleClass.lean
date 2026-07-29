import DiscreteSubgroupsLieGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : DiscreteSubgroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteSubgroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse