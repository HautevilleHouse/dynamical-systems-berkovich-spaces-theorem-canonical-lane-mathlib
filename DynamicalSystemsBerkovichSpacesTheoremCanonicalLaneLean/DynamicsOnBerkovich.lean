import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure DynamicsOnBerkovich (B : BerkovichSpace) where
  map : B.field -> B.field
  analyticity : Prop
  degree : ℕ
  repellingFixedPoints : Prop
  equicontinuity : Prop

structure DynamicsOnBerkovichEvidence {B : BerkovichSpace} (D : DynamicsOnBerkovich B) where
  analyticityClosed : D.analyticity
  repellingFixedPointsClosed : D.repellingFixedPoints
  equicontinuityClosed : D.equicontinuity

def DynamicsOnBerkovichClosed {B : BerkovichSpace} (D : DynamicsOnBerkovich B) : Prop :=
  D.analyticity ∧ D.repellingFixedPoints ∧ D.equicontinuity

theorem dynamics_on_berkovich_closed_from_evidence {B : BerkovichSpace} (D : DynamicsOnBerkovich B) (E : DynamicsOnBerkovichEvidence D) : DynamicsOnBerkovichClosed D := by
  exact And.intro E.analyticityClosed (And.intro E.repellingFixedPointsClosed E.equicontinuityClosed)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse