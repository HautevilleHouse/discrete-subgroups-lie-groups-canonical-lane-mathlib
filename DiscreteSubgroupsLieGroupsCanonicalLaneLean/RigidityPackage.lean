import DiscreteSubgroupsLieGroupsCanonicalLaneLean.CovolumeFinite

/-!
# Rigidity Package (Superrigidity / Mostow rigidity)
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure RigidityPackage {G : LieGroupPackage}
    (C : CovolumeFinitePackage G) where
  representationVariety : Type u
  superrigidityHomomorphism : Prop
  cohomologyVanishing : Prop
  localRigidity : Prop
  mostowCondition : Prop

structure RigidityEvidence {G : LieGroupPackage}
    {C : CovolumeFinitePackage G} (R : RigidityPackage C) where
  superrigidityHomomorphismClosed : R.superrigidityHomomorphism
  cohomologyVanishingClosed : R.cohomologyVanishing
  localRigidityClosed : R.localRigidity
  mostowConditionClosed : R.mostowCondition

def RigidityClosed {G : LieGroupPackage}
    {C : CovolumeFinitePackage G} (R : RigidityPackage C) : Prop :=
  R.superrigidityHomomorphism ∧ R.cohomologyVanishing ∧
  R.localRigidity ∧ R.mostowCondition

theorem rigidity_closed_from_evidence
    {G : LieGroupPackage} {C : CovolumeFinitePackage G}
    (R : RigidityPackage C) (E : RigidityEvidence R) : RigidityClosed R := by
  exact And.intro E.superrigidityHomomorphismClosed
    (And.intro E.cohomologyVanishingClosed
      (And.intro E.localRigidityClosed E.mostowConditionClosed))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse