import DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.RigidityDynamics
import Mathlib.NumberTheory.LSeries

/-!
# Zeta Functional Endpoint Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure ZetaFunctionalEndpointPackage {P : PotentialTheoryBerkovichPackage}
    {R : PotentialTheoryBerkovichPackage}
    (D : RigidityDynamicsPackage R) where
  zetaFunctionMeromorphic : Prop
  functionalEquationHolds : Prop
  rationalExpression : Prop
  endpointMatchesBerkovichZeta : Prop

structure ZetaFunctionalEndpointEvidence {P : PotentialTheoryBerkovichPackage}
    {R : PotentialTheoryBerkovichPackage}
    {D : RigidityDynamicsPackage R}
    (Z : ZetaFunctionalEndpointPackage D) where
  zetaFunctionMeromorphicClosed : Z.zetaFunctionMeromorphic
  functionalEquationHoldsClosed : Z.functionalEquationHolds
  rationalExpressionClosed : Z.rationalExpression
  endpointMatchesBerkovichZetaClosed : Z.endpointMatchesBerkovichZeta

def ZetaFunctionalEndpointClosed {P : PotentialTheoryBerkovichPackage}
    {R : PotentialTheoryBerkovichPackage}
    {D : RigidityDynamicsPackage R}
    (Z : ZetaFunctionalEndpointPackage D) : Prop :=
  Z.zetaFunctionMeromorphic ∧ Z.functionalEquationHolds ∧
  Z.rationalExpression ∧ Z.endpointMatchesBerkovichZeta

theorem zeta_functional_endpoint_closed_from_evidence
    {P : PotentialTheoryBerkovichPackage} {R : PotentialTheoryBerkovichPackage}
    {D : RigidityDynamicsPackage R}
    (Z : ZetaFunctionalEndpointPackage D) (E : ZetaFunctionalEndpointEvidence Z) :
    ZetaFunctionalEndpointClosed Z := by
  exact And.intro E.zetaFunctionMeromorphicClosed
    (And.intro E.functionalEquationHoldsClosed
      (And.intro E.rationalExpressionClosed E.endpointMatchesBerkovichZetaClosed))

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse