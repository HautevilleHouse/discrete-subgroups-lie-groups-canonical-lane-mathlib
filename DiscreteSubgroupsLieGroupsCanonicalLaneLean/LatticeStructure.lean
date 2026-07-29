import DiscreteSubgroupsLieGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure LatticeStructurePackage where
  covolumeFinite : Prop
  discreteEmbedding : Prop
  fundamentalDomainExists : Prop
  arithmeticityCondition : Prop

structure LatticeStructureEvidence (L : LatticeStructurePackage) where
  covolumeFiniteClosed : L.covolumeFinite
  discreteEmbeddingClosed : L.discreteEmbedding
  fundamentalDomainExistsClosed : L.fundamentalDomainExists
  arithmeticityConditionClosed : L.arithmeticityCondition

def LatticeStructureClosed (L : LatticeStructurePackage) : Prop :=
  L.covolumeFinite ∧ L.discreteEmbedding ∧ L.fundamentalDomainExists ∧ L.arithmeticityCondition

theorem lattice_structure_closed_from_evidence (L : LatticeStructurePackage) (E : LatticeStructureEvidence L) :
    LatticeStructureClosed L := by
  exact And.intro E.covolumeFiniteClosed (And.intro E.discreteEmbeddingClosed (And.intro E.fundamentalDomainExistsClosed E.arithmeticityConditionClosed))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
