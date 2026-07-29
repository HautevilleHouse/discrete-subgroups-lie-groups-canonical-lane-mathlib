import DiscreteSubgroupsLieGroupsCanonicalLaneLean.LatticeStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsCanonicalLaneLean

structure CocompactnessPackage {L : LatticeStructurePackage} (Lpkg : CocompactnessPackage) where
  quotientCompact : Prop
  closedImage : Prop
  noCusps : Prop
  cohomologyVanishing : Prop

structure CocompactnessEvidence {L : LatticeStructurePackage} (C : CocompactnessPackage L) where
  quotientCompactClosed : C.quotientCompact
  closedImageClosed : C.closedImage
  noCuspsClosed : C.noCusps
  cohomologyVanishingClosed : C.cohomologyVanishing

def CocompactnessClosed {L : LatticeStructurePackage} (C : CocompactnessPackage L) : Prop :=
  C.quotientCompact ∧ C.closedImage ∧ C.noCusps ∧ C.cohomologyVanishing

theorem cocompactness_closed_from_evidence {L : LatticeStructurePackage} (C : CocompactnessPackage L) (E : CocompactnessEvidence C) :
    CocompactnessClosed C := by
  exact And.intro E.quotientCompactClosed (And.intro E.closedImageClosed (And.intro E.noCuspsClosed E.cohomologyVanishingClosed))

end DiscreteSubgroupsLieGroupsCanonicalLaneLean
end HautevilleHouse
