import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichEndpointPackage {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalSystem B} {P : BerkovichPotentialTheoryPackage D}
    (U : BerkovichUniformizationPackage P) where
  targetBerkovichSpace : Type u
  targetTopology : TopologicalSpace targetBerkovichSpace
  canonicalIsomorphism : Prop
  endpointClosureTheorem : Prop

structure BerkovichEndpointEvidence {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalSystem B} {P : BerkovichPotentialTheoryPackage D}
    {U : BerkovichUniformizationPackage P}
    (Epkg : BerkovichEndpointPackage U) where
  canonicalIsomorphismClosed : Epkg.canonicalIsomorphism
  endpointClosureTheoremClosed : Epkg.endpointClosureTheorem

def BerkovichEndpointClosed {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalSystem B} {P : BerkovichPotentialTheoryPackage D}
    {U : BerkovichUniformizationPackage P}
    (Epkg : BerkovichEndpointPackage U) : Prop :=
  Epkg.canonicalIsomorphism ∧ Epkg.endpointClosureTheorem

theorem berkovich_endpoint_closed_from_evidence
    {B : BerkovichAffinoidPackage} {D : BerkovichDynamicalSystem B}
    {P : BerkovichPotentialTheoryPackage D} {U : BerkovichUniformizationPackage P}
    (Epkg : BerkovichEndpointPackage U)
    (E : BerkovichEndpointEvidence Epkg) : BerkovichEndpointClosed Epkg := by
  exact And.intro E.canonicalIsomorphismClosed E.endpointClosureTheoremClosed

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse
