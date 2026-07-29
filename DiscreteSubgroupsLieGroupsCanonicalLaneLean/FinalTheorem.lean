import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DiscreteSubgroupsLieGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

def ConstrainedDiscreteSubgroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_subgroup_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteSubgroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse