import DiscreteSubgroupsLieGroupsCanonicalLaneLean.LieGroupPackage

/-!
# Covolume Finite Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure CovolumeFinitePackage (G : LieGroupPackage) where
  discreteSubgroup : Type u
  subgroupEmbedding : discreteSubgroup → G.carrier
  haarMeasureOnQuotient : Type v
  covolumeFinite : Prop
  quotientCompact : Prop
  
structure CovolumeFiniteEvidence {G : LieGroupPackage}
    (C : CovolumeFinitePackage G) where
  covolumeFiniteClosed : C.covolumeFinite
  quotientCompactClosed : C.quotientCompact

def CovolumeFiniteClosed {G : LieGroupPackage}
    (C : CovolumeFinitePackage G) : Prop :=
  C.covolumeFinite ∧ C.quotientCompact

theorem covolume_finite_closed_from_evidence
    {G : LieGroupPackage} (C : CovolumeFinitePackage G)
    (E : CovolumeFiniteEvidence C) : CovolumeFiniteClosed C := by
  exact And.intro E.covolumeFiniteClosed E.quotientCompactClosed

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse