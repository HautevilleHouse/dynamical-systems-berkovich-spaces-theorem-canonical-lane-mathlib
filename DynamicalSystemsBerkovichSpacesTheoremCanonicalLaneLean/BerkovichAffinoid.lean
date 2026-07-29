import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichAffinoidPackage where
  affinoidAlgebra : Type u
  spectralSeminorm : Type v
  strictAffinoid : Prop
  reductionMap : Prop
  residueField : Prop

structure BerkovichAffinoidEvidence (B : BerkovichAffinoidPackage) where
  strictAffinoidClosed : B.strictAffinoid
  reductionMapClosed : B.reductionMap
  residueFieldClosed : B.residueField

def BerkovichAffinoidClosed (B : BerkovichAffinoidPackage) : Prop :=
  B.strictAffinoid ∧ B.reductionMap ∧ B.residueField

theorem berkovich_affinoid_closed_from_evidence
    (B : BerkovichAffinoidPackage) (E : BerkovichAffinoidEvidence B) :
    BerkovichAffinoidClosed B := by
  exact And.intro E.strictAffinoidClosed
    (And.intro E.reductionMapClosed E.residueFieldClosed)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse
