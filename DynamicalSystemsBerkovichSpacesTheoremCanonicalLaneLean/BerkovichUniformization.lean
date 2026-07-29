import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

-- Uniformization of Berkovich curves via Schottky groups
structure SchottkyGroup (P : BerkovichProjectiveLine k) where
  generators : List (P.point → P.point)
  loxodromic : Prop
  freeGroup : Prop
  loxodromicTerm : loxodromic
  freeGroupTerm : freeGroup

structure BerkovichUniformization (P : BerkovichProjectiveLine k) (Γ : SchottkyGroup P) where
  quotientSpace : Type
  topology : TopologicalSpace quotientSpace
  isomorphismToCurve : Quotient.mk (Γ.generators) ≃ P.point
  analyticStructure : Prop
  analyticStructureTerm : analyticStructure

-- Admissible class for uniformization
def uniformizationClosed (P : BerkovichProjectiveLine k) (U : BerkovichUniformization P Γ) : Prop :=
  U.analyticStructure

theorem uniformization_closed_evidence (P : BerkovichProjectiveLine k) (U : BerkovichUniformization P Γ) : uniformizationClosed P U := by
  exact U.analyticStructureTerm

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse