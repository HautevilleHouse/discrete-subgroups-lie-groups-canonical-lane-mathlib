import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure DiscreteSubgroup (G : Type u) [TopologicalSpace G] [Group G] where
  carrier : Set G
  isSubgroup : IsSubgroup carrier
  discreteTopology : IsDiscrete (Subtype.topology carrier)

structure LatticeSubgroup (G : Type u) [TopologicalSpace G] [Group G] extends DiscreteSubgroup G where
  covolumeFinite : Prop
  fundamentalDomain : Set G

structure AdmissibleDiscreteSubgroup (G : Type u) [TopologicalSpace G] [Group G] where
  subgroup : DiscreteSubgroup G
  arithmetic : Prop
  rigid : Prop

structure DiscreteSubgroupEvidence (G : Type u) [TopologicalSpace G] [Group G]
    (D : DiscreteSubgroup G) where
  discreteTopologyClosed : D.discreteTopology
  isSubgroupClosed : D.isSubgroup

def DiscreteSubgroupClosed (G : Type u) [TopologicalSpace G] [Group G]
    (D : DiscreteSubgroup G) : Prop :=
  D.discreteTopology ∧ D.isSubgroup

theorem discrete_subgroup_closed_from_evidence
    (G : Type u) [TopologicalSpace G] [Group G]
    (D : DiscreteSubgroup G) (E : DiscreteSubgroupEvidence G D) :
    DiscreteSubgroupClosed D := by
  exact And.intro E.discreteTopologyClosed E.isSubgroupClosed

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse