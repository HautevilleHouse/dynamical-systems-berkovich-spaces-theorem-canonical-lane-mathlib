import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

def ConstrainedBerkovichClosure (P : BerkovichProjectiveLine k) (A : DynamicalBerkovichAdmissibleClass P) : Prop :=
  berkovichBridgeClosed P A ∧ A.gateWitness

theorem constrained_berkovich_endgame (P : BerkovichProjectiveLine k) (A : DynamicalBerkovichAdmissibleClass P) : ConstrainedBerkovichClosure P A := by
  exact And.intro (berkovich_bridge_closed_from_admissible P A) A.gateWitness

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse