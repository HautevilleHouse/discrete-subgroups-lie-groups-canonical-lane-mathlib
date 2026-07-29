import DiscreteSubgroupsLieGroupsCanonicalLaneLean.Arithmeticity

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure RigidityPackage {L : LatticeStructurePackage} {C : CocompactnessPackage L} {A : ArithmeticityPackage C} (R : RigidityPackage A) where
  localRigidity : Prop
  globalRigidity : Prop
  deformationRigidity : Prop
  cohomologyVanishing : Prop

structure RigidityEvidence {L : LatticeStructurePackage} {C : CocompactnessPackage L} {A : ArithmeticityPackage C} (R : RigidityPackage A) where
  localRigidityClosed : R.localRigidity
  globalRigidityClosed : R.globalRigidity
  deformationRigidityClosed : R.deformationRigidity
  cohomologyVanishingClosed : R.cohomologyVanishing

def RigidityClosed {L : LatticeStructurePackage} {C : CocompactnessPackage L} {A : ArithmeticityPackage C} (R : RigidityPackage A) : Prop :=
  R.localRigidity ∧ R.globalRigidity ∧ R.deformationRigidity ∧ R.cohomologyVanishing

theorem rigidity_closed_from_evidence {L : LatticeStructurePackage} {C : CocompactnessPackage L} {A : ArithmeticityPackage C} (R : RigidityPackage A) (E : RigidityEvidence R) :
    RigidityClosed R := by
  exact And.intro E.localRigidityClosed (And.intro E.globalRigidityClosed (And.intro E.deformationRigidityClosed E.cohomologyVanishingClosed))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
