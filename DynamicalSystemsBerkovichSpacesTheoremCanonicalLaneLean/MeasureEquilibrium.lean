import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpace
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.PotentialTheory

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure MeasureEquilibriumPackage {B : BerkovichSpace} (P : PotentialTheoryPackage B) where
  equilibriumMeasure : Type u
  invarianceUnderDynamics : Prop
  entropyMaximizing : Prop
  lyapunovExponentRelation : Prop

structure MeasureEquilibriumEvidence {B : BerkovichSpace} {P : PotentialTheoryPackage B} (M : MeasureEquilibriumPackage P) where
  invarianceUnderDynamicsClosed : M.invarianceUnderDynamics
  entropyMaximizingClosed : M.entropyMaximizing
  lyapunovExponentRelationClosed : M.lyapunovExponentRelation

def MeasureEquilibriumClosed {B : BerkovichSpace} {P : PotentialTheoryPackage B} (M : MeasureEquilibriumPackage P) : Prop :=
  M.invarianceUnderDynamics ∧ M.entropyMaximizing ∧ M.lyapunovExponentRelation

theorem measure_equilibrium_closed_from_evidence {B : BerkovichSpace} {P : PotentialTheoryPackage B} (M : MeasureEquilibriumPackage P) (E : MeasureEquilibriumEvidence M) : MeasureEquilibriumClosed M := by
  exact And.intro E.invarianceUnderDynamicsClosed (And.intro E.entropyMaximizingClosed E.lyapunovExponentRelationClosed)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse