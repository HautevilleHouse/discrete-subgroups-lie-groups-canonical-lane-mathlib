import DiscreteSubgroupsLieGroupsCanonicalLaneLean.HomogeneousSpace

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure AlgebraicStructurePackage {P : DiscreteSubgroupStructurePackage}
    {Q : P.covolumeFinite} {H : HomogeneousSpacePackage Q} where
  representationTheory : Prop
  arithmeticityConditions : Prop
  superrigidityContext : Prop
  subgroupGrowth : Prop

structure AlgebraicStructureEvidence {P : DiscreteSubgroupStructurePackage}
    {Q : P.covolumeFinite} {H : HomogeneousSpacePackage Q}
    (A : AlgebraicStructurePackage H) where
  representationTheoryClosed : A.representationTheory
  arithmeticityConditionsClosed : A.arithmeticityConditions
  superrigidityContextClosed : A.superrigidityContext
  subgroupGrowthClosed : A.subgroupGrowth

def AlgebraicStructureClosed {P : DiscreteSubgroupStructurePackage}
    {Q : P.covolumeFinite} {H : HomogeneousSpacePackage Q}
    (A : AlgebraicStructurePackage H) : Prop :=
  A.representationTheory ∧ A.arithmeticityConditions ∧
  A.superrigidityContext ∧ A.subgroupGrowth

theorem algebraic_structure_closed_from_evidence
    {P : DiscreteSubgroupStructurePackage} {Q : P.covolumeFinite}
    {H : HomogeneousSpacePackage Q} (A : AlgebraicStructurePackage H)
    (E : AlgebraicStructureEvidence A) : AlgebraicStructureClosed A := by
  exact And.intro E.representationTheoryClosed
    (And.intro E.arithmeticityConditionsClosed
      (And.intro E.superrigidityContextClosed E.subgroupGrowthClosed))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse