import DiscreteSubgroupsLieGroupsCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure HomogeneousSpacePackage {P : DiscreteSubgroupStructurePackage}
    (Q : P.covolumeFinite) where
  quotientSpaceManifold : Type u
  quotientTopology : TopologicalSpace quotientSpaceManifold
  homogeneousStructure : Prop
  compactIfCocompact : Prop
  geodesicCompleteness : Prop

structure HomogeneousSpaceEvidence {P : DiscreteSubgroupStructurePackage}
    {Q : P.covolumeFinite} (H : HomogeneousSpacePackage Q) where
  homogeneousStructureClosed : H.homogeneousStructure
  compactIfCocompactClosed : H.compactIfCocompact
  geodesicCompletenessClosed : H.geodesicCompleteness

def HomogeneousSpaceClosed {P : DiscreteSubgroupStructurePackage}
    {Q : P.covolumeFinite} (H : HomogeneousSpacePackage Q) : Prop :=
  H.homogeneousStructure ∧ H.compactIfCocompact ∧ H.geodesicCompleteness

theorem homogeneous_space_closed_from_evidence
    {P : DiscreteSubgroupStructurePackage} {Q : P.covolumeFinite}
    (H : HomogeneousSpacePackage Q) (E : HomogeneousSpaceEvidence H) :
    HomogeneousSpaceClosed H := by
  exact And.intro E.homogeneousStructureClosed
    (And.intro E.compactIfCocompactClosed E.geodesicCompletenessClosed)

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse