import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure PotentialTheoryPackage (B : BerkovichSpace) where
  laplacianOperator : Type u
  capacityFunction : Type v
  energyFunctional : Type w
  equilibriumPotential : Prop
  variationalPrinciple : Prop

structure PotentialTheoryEvidence {B : BerkovichSpace} (P : PotentialTheoryPackage B) where
  equilibriumPotentialClosed : P.equilibriumPotential
  variationalPrincipleClosed : P.variationalPrinciple

def PotentialTheoryClosed {B : BerkovichSpace} (P : PotentialTheoryPackage B) : Prop :=
  P.equilibriumPotential ∧ P.variationalPrinciple

theorem potential_theory_closed_from_evidence {B : BerkovichSpace} (P : PotentialTheoryPackage B) (E : PotentialTheoryEvidence P) : PotentialTheoryClosed P := by
  exact And.intro E.equilibriumPotentialClosed E.variationalPrincipleClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse