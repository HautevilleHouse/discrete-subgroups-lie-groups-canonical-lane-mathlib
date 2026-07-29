import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure ArithmeticLatticePackage where
  G : Type u
  [top : TopologicalSpace G]
  [group : Group G]
  [lieGroup : LieGroup G]
  arithmeticSubgroup : Subgroup G
  congruenceProperty : Prop
  superrigidityInput : Prop
  arithmeticityProof : Prop

structure ArithmeticLatticeEvidence (P : ArithmeticLatticePackage) where
  congruencePropertyClosed : P.congruenceProperty
  superrigidityInputClosed : P.superrigidityInput
  arithmeticityProofClosed : P.arithmeticityProof

def ArithmeticLatticeClosed (P : ArithmeticLatticePackage) : Prop :=
  P.congruenceProperty ∧ P.superrigidityInput ∧ P.arithmeticityProof

theorem arithmetic_lattice_closed_from_evidence (P : ArithmeticLatticePackage)
    (E : ArithmeticLatticeEvidence P) : ArithmeticLatticeClosed P := by
  exact And.intro E.congruencePropertyClosed
    (And.intro E.superrigidityInputClosed E.arithmeticityProofClosed)

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
