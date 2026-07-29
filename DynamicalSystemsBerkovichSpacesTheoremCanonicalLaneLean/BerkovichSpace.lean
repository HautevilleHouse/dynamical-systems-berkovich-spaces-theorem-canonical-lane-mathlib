import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichSpace where
  field : Type u
  valuation : field -> ℚ
  topology : TopologicalSpace field
  analyticStructure : Type v
  compactnessProperty : Prop
  sheafOfAnalyticFunctions : Prop

structure BerkovichSpaceEvidence (B : BerkovichSpace) where
  compactnessPropertyClosed : B.compactnessProperty
  sheafOfAnalyticFunctionsClosed : B.sheafOfAnalyticFunctions

def BerkovichSpaceClosed (B : BerkovichSpace) : Prop :=
  B.compactnessProperty ∧ B.sheafOfAnalyticFunctions

theorem berkovich_space_closed_from_evidence (B : BerkovichSpace) (E : BerkovichSpaceEvidence B) : BerkovichSpaceClosed B := by
  exact And.intro E.compactnessPropertyClosed E.sheafOfAnalyticFunctionsClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse