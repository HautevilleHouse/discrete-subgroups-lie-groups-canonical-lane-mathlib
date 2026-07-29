import DiscreteSubgroupsLieGroupsCanonicalLaneLean.RigidityPackage

/-!
# Arithmetic Lattice Construction
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure ArithmeticLatticeConstruction {G : LieGroupPackage}
    {C : CovolumeFinitePackage G} (R : RigidityPackage C) where
  numberFieldDefined : Prop
  embeddingIntoLinearGroup : Prop
  integralStructure : Prop
  commensurabilityCondition : Prop
  arithmeticityDerived : Prop

structure ArithmeticLatticeEvidence {G : LieGroupPackage}
    {C : CovolumeFinitePackage G} {R : RigidityPackage C}
    (A : ArithmeticLatticeConstruction R) where
  numberFieldDefinedClosed : A.numberFieldDefined
  embeddingIntoLinearGroupClosed : A.embeddingIntoLinearGroup
  integralStructureClosed : A.integralStructure
  commensurabilityConditionClosed : A.commensurabilityCondition
  arithmeticityDerivedClosed : A.arithmeticityDerived

def ArithmeticLatticeClosed {G : LieGroupPackage}
    {C : CovolumeFinitePackage G} {R : RigidityPackage C}
    (A : ArithmeticLatticeConstruction R) : Prop :=
  A.numberFieldDefined ∧ A.embeddingIntoLinearGroup ∧
  A.integralStructure ∧ A.commensurabilityCondition ∧ A.arithmeticityDerived

theorem arithmetic_lattice_closed_from_evidence
    {G : LieGroupPackage} {C : CovolumeFinitePackage G}
    {R : RigidityPackage C} (A : ArithmeticLatticeConstruction R)
    (E : ArithmeticLatticeEvidence A) : ArithmeticLatticeClosed A := by
  exact And.intro E.numberFieldDefinedClosed
    (And.intro E.embeddingIntoLinearGroupClosed
      (And.intro E.integralStructureClosed
        (And.intro E.commensurabilityConditionClosed E.arithmeticityDerivedClosed)))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse