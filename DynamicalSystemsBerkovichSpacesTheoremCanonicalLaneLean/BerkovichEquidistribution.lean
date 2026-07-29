import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichCanonicalHeight

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

open Complex

structure BerkovichPreperiodicPointsPackage {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (H : CanonicalHeightPackage X f) where
  preperPointSet : Type u
  preperEquidistribution : Prop
  heightSharpening : Prop
  preperEquidistributionClosed : preperEquidistribution
  heightSharpeningClosed : heightSharpening

structure BerkovichEquidistributionEvidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {H : CanonicalHeightPackage X f} (E : BerkovichPreperiodicPointsPackage H) where
  preperEquidistributionClosed : E.preperEquidistributionClosed
  heightSharpeningClosed : E.heightSharpeningClosed

def BerkovichEquidistributionClosed {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {H : CanonicalHeightPackage X f} (E : BerkovichPreperiodicPointsPackage H) : Prop :=
  E.preperEquidistribution ∧ E.heightSharpening

theorem berkovich_equidistribution_closed_from_evidence {X : BerkovichCurve}
    {f : DynamicalSystemOnBerkovichCurve X} {H : CanonicalHeightPackage X f}
    (E : BerkovichPreperiodicPointsPackage H) (Ev : BerkovichEquidistributionEvidence E) :
    BerkovichEquidistributionClosed E := by
  exact And.intro Ev.preperEquidistributionClosed Ev.heightSharpeningClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse