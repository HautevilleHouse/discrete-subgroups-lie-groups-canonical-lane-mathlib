import DiscreteSubgroupsLieGroupsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteSubgroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse