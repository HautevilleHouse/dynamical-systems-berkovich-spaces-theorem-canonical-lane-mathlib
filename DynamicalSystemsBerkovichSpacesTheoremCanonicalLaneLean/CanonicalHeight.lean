import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpace
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.DynamicsOnBerkovich
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.MeasureEquilibrium

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure CanonicalHeightPackage {B : BerkovichSpace} {D : DynamicsOnBerkovich B} {M : MeasureEquilibriumPackage P} where
  heightFunction : Type u
  adelicProperty : Prop
  northcottProperty : Prop
  heightRelatesToEntropy : Prop

structure CanonicalHeightEvidence {B : BerkovichSpace} {D : DynamicsOnBerkovich B} (H : CanonicalHeightPackage B D) where
  adelicPropertyClosed : H.adelicProperty
  northcottPropertyClosed : H.northcottProperty
  heightRelatesToEntropyClosed : H.heightRelatesToEntropy

def CanonicalHeightClosed {B : BerkovichSpace} {D : DynamicsOnBerkovich B} (H : CanonicalHeightPackage B D) : Prop :=
  H.adelicProperty ∧ H.northcottProperty ∧ H.heightRelatesToEntropy

theorem canonical_height_closed_from_evidence {B : BerkovichSpace} {D : DynamicsOnBerkovich B} (H : CanonicalHeightPackage B D) (E : CanonicalHeightEvidence H) : CanonicalHeightClosed H := by
  exact And.intro E.adelicPropertyClosed (And.intro E.northcottPropertyClosed E.heightRelatesToEntropyClosed)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse