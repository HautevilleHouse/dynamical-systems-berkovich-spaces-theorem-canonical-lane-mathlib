import DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Potential Theory on Berkovich Space Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure PotentialTheoryBerkovichPackage where
  energyFunctional : Type u
  laplacian : Type v
  capacity : Prop
  energyMinimizerExists : Prop
  equilibriumMeasure : Prop

structure PotentialTheoryBerkovichEvidence (P : PotentialTheoryBerkovichPackage) where
  capacityClosed : P.capacity
  energyMinimizerExistsClosed : P.energyMinimizerExists
  equilibriumMeasureClosed : P.equilibriumMeasure

def PotentialTheoryBerkovichClosed (P : PotentialTheoryBerkovichPackage) : Prop :=
  P.capacity ∧ P.energyMinimizerExists ∧ P.equilibriumMeasure

theorem potential_theory_berkovich_closed_from_evidence
    (P : PotentialTheoryBerkovichPackage) (E : PotentialTheoryBerkovichEvidence P) :
    PotentialTheoryBerkovichClosed P := by
  exact And.intro E.capacityClosed
    (And.intro E.energyMinimizerExistsClosed E.equilibriumMeasureClosed)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse