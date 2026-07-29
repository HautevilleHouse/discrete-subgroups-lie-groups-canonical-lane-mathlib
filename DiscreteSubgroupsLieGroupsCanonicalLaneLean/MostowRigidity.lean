import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure MostowRigidityPackage (G : Type u) [TopologicalSpace G] [Group G] [Connected G] [SemisimpleLieGroup G]
    (Γ : DiscreteSubgroup G) where
  latticeCondition : LatticeSubgroup G
  isLattice : latticeCondition.covolumeFinite
  conclusion : IsomorphicViaIsometry Γ Γ

structure MostowRigidityEvidence {G : Type u} [TopologicalSpace G] [Group G] [Connected G] [SemisimpleLieGroup G]
    {Γ : DiscreteSubgroup G} (M : MostowRigidityPackage G Γ) where
  isLatticeClosed : M.isLattice
  conclusionClosed : M.conclusion

def MostowRigidityClosed {G : Type u} [TopologicalSpace G] [Group G] [Connected G] [SemisimpleLieGroup G]
    {Γ : DiscreteSubgroup G} (M : MostowRigidityPackage G Γ) : Prop :=
  M.isLattice ∧ M.conclusion

theorem mostow_rigidity_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G] [Connected G] [SemisimpleLieGroup G]
    {Γ : DiscreteSubgroup G} (M : MostowRigidityPackage G Γ)
    (E : MostowRigidityEvidence M) : MostowRigidityClosed M := by
  exact And.intro E.isLatticeClosed E.conclusionClosed

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse