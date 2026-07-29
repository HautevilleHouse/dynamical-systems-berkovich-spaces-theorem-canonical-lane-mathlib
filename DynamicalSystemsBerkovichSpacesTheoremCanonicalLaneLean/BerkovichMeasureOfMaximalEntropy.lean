import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichFatouJulia

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

open MeasureTheory

structure BerkovichMaximalEntropyMeasurePackage {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    (J : BerkovichJuliaSetPackage Eq) where
  mu : Measure X.carrier
  fInvariant : ∀ A : Set X.carrier, MeasurableSet A → mu (f.selfMap.map '' A) = mu A
  entropyReached : Prop
  entropyReachedClosed : entropyReached

structure BerkovichMaximalEntropyMeasureEvidence {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {J : BerkovichJuliaSetPackage Eq} (M : BerkovichMaximalEntropyMeasurePackage J) where
  fInvariantClosed : M.fInvariant
  entropyReachedClosed : M.entropyReachedClosed

def BerkovichMaximalEntropyMeasureClosed {X : BerkovichCurve} {f : DynamicalSystemOnBerkovichCurve X}
    {J : BerkovichJuliaSetPackage Eq} (M : BerkovichMaximalEntropyMeasurePackage J) : Prop :=
  M.fInvariant ∧ M.entropyReached

theorem berkovich_maximal_entropy_measure_closed_from_evidence {X : BerkovichCurve}
    {f : DynamicalSystemOnBerkovichCurve X} {J : BerkovichJuliaSetPackage Eq}
    (M : BerkovichMaximalEntropyMeasurePackage J) (Ev : BerkovichMaximalEntropyMeasureEvidence M) :
    BerkovichMaximalEntropyMeasureClosed M := by
  exact And.intro Ev.fInvariantClosed Ev.entropyReachedClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse