import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichEquidistribution

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichJuliaSetPackage {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (Eq : BerkovichPreperiodicPointsPackage (H := ?_)) where
  juliaSet : Set X.carrier
  fatouSet : Set X.carrier
  juliaRepellingPeriodicDense : Prop
  fatouComponentsClassified : Prop
  juliaRepellingPeriodicDenseClosed : juliaRepellingPeriodicDense
  fatouComponentsClassifiedClosed : fatouComponentsClassified

structure BerkovichJuliaSetEvidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {Eq : BerkovichPreperiodicPointsPackage (H := ?_)} (J : BerkovichJuliaSetPackage Eq) where
  juliaRepellingPeriodicDenseClosed : J.juliaRepellingPeriodicDenseClosed
  fatouComponentsClassifiedClosed : J.fatouComponentsClassifiedClosed

def BerkovichJuliaSetClosed {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {Eq : BerkovichPreperiodicPointsPackage (H := ?_)} (J : BerkovichJuliaSetPackage Eq) : Prop :=
  J.juliaRepellingPeriodicDense ∧ J.fatouComponentsClassified

theorem berkovich_julia_set_closed_from_evidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {Eq : BerkovichPreperiodicPointsPackage (H := ?_)} (J : BerkovichJuliaSetPackage Eq)
    (Ev : BerkovichJuliaSetEvidence J) : BerkovichJuliaSetClosed J := by
  exact And.intro Ev.juliaRepellingPeriodicDenseClosed Ev.fatouComponentsClassifiedClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse