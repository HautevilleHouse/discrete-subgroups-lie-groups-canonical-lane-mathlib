import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure ArithmeticSubgroup (G : Type u) [TopologicalSpace G] [Group G] (L : G) where
  subgroup : DiscreteSubgroup G
  definedOverNumberField : Prop
  commensurableWithIntegralPoints : Prop

structure SuperRigidity (G : Type u) [TopologicalSpace G] [Group G] (Γ : DiscreteSubgroup G) where
  homomorphismExtension : ∀ (H : Type v) [TopologicalSpace H] [Group H] (ρ : Γ.carrier → H),
    Continuous (Subtype.val ∘ ρ) → ExtendsToContinuousHom ρ
  trivialCohomology : Prop

structure ArithmeticityEvidence {G : Type u} [TopologicalSpace G] [Group G]
    (A : ArithmeticSubgroup G) where
  definedOverNumberFieldClosed : A.definedOverNumberField
  commensurableWithIntegralPointsClosed : A.commensurableWithIntegralPoints

def ArithmeticSubgroupClosed {G : Type u} [TopologicalSpace G] [Group G]
    (A : ArithmeticSubgroup G) : Prop :=
  A.definedOverNumberField ∧ A.commensurableWithIntegralPoints

theorem arithmetic_subgroup_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G]
    (A : ArithmeticSubgroup G) (E : ArithmeticityEvidence A) :
    ArithmeticSubgroupClosed A := by
  exact And.intro E.definedOverNumberFieldClosed E.commensurableWithIntegralPointsClosed

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse