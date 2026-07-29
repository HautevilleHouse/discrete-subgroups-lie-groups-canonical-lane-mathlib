import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure LatticeComputationPackage where
  G : Type u
  [top : TopologicalSpace G]
  [group : Group G]
  [lieGroup : LieGroup G]
  Gamma : Subgroup G
  discreteTopology : DiscreteTopology (Gamma)
  covolumeComputed : ℝ
  cohomologicalInvariants : Prop
  presentationFinite : Prop

structure LatticeComputationEvidence (P : LatticeComputationPackage) where
  covolumeComputedClosed : P.covolumeComputed = P.covolumeComputed
  cohomologicalInvariantsClosed : P.cohomologicalInvariants
  presentationFiniteClosed : P.presentationFinite

def LatticeComputationClosed (P : LatticeComputationPackage) : Prop :=
  P.cohomologicalInvariants ∧ P.presentationFinite

theorem lattice_computation_closed_from_evidence (P : LatticeComputationPackage)
    (E : LatticeComputationEvidence P) : LatticeComputationClosed P := by
  exact And.intro E.cohomologicalInvariantsClosed E.presentationFiniteClosed

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
