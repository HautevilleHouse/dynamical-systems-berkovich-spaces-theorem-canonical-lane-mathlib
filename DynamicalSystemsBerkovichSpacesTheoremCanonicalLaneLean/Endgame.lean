import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.BerkovichSpace
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.DynamicsOnBerkovich
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.PotentialTheory
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.MeasureEquilibrium
import HautevilleHouse.DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.CanonicalHeight

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BerkovichSpaceClosed A.object.berkovichSpace ∧ DynamicsOnBerkovichClosed A.object.dynamics

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.berkovichEvidence A.object.dynamicsEvidence

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBerkovichClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_endgame (A : AdmissibleClass) : ConstrainedBerkovichClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse