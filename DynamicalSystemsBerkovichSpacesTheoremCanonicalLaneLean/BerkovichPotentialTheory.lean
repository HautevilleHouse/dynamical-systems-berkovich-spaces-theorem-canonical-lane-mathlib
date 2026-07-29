import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichPotentialTheoryPackage {B : BerkovichAffinoidPackage}
    (D : BerkovichDynamicalSystem B) where
  capacityFunction : Type u
  equilibriumMeasure : Type v
  energyFunctional : Prop
  variationalPrinciple : Prop

structure BerkovichPotentialTheoryEvidence {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalSystem B}
    (P : BerkovichPotentialTheoryPackage D) where
  energyFunctionalClosed : P.energyFunctional
  variationalPrincipleClosed : P.variationalPrinciple

def BerkovichPotentialTheoryClosed {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalSystem B}
    (P : BerkovichPotentialTheoryPackage D) : Prop :=
  P.energyFunctional ∧ P.variationalPrinciple

theorem berkovich_potential_theory_closed_from_evidence
    {B : BerkovichAffinoidPackage} {D : BerkovichDynamicalSystem B}
    (P : BerkovichPotentialTheoryPackage D)
    (E : BerkovichPotentialTheoryEvidence P) :
    BerkovichPotentialTheoryClosed P := by
  exact And.intro E.energyFunctionalClosed E.variationalPrincipleClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse
