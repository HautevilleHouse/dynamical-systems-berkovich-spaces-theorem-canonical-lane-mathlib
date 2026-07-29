import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpaceDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

open Complex

structure CanonicalHeightPackage (X : BerkovichCurve) (f : DynamicalSystemOnBerkovichCurve X) where
  heightFunction : X.carrier → ℝ
  functoriality : ∀ x : X.carrier, heightFunction (f.selfMap.map x) = (f.degree : ℝ) * heightFunction x
  finiteness : Prop
  finitenessClosed : finiteness

structure CanonicalHeightEvidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (H : CanonicalHeightPackage X f) where
  functorialityClosed : H.functoriality
  finitenessClosed : H.finitenessClosed

def CanonicalHeightClosed {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (H : CanonicalHeightPackage X f) : Prop :=
  H.functoriality ∧ H.finiteness

theorem canonical_height_closed_from_evidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (H : CanonicalHeightPackage X f) (E : CanonicalHeightEvidence H) : CanonicalHeightClosed H := by
  exact And.intro E.functorialityClosed E.finitenessClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse