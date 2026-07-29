import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichCurve where
  carrier : Type u
  topology : TopologicalSpace carrier
  structureSheaf : Type v
  analyticStructure : Prop
  analyticStructureClosed : analyticStructure

structure BerkovichEndomorphism (X : BerkovichCurve) where
  map : X.carrier -> X.carrier
  continuousMap : Continuous map

structure DynamicalSystemOnBerkovichCurve (X : BerkovichCurve) where
  selfMap : BerkovichEndomorphism X
  degree : ℕ
  degreePos : degree ≥ 1

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse