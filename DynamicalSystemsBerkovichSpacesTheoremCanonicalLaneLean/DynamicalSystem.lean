import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure DynamicalSystem (X : Type u) [TopologicalSpace X] where
  action : ℕ → X → X
  continuity : ∀ n, Continuous (action n)
  semigroup : ∀ m n x, action (m + n) x = action m (action n x)
  identity : ∀ x, action 0 x = x

def DynamicalSystemClosed (D : DynamicalSystem X) : Prop :=
  D.continuity 0 ∧ D.semigroup 1 0 (Classical.arbitrary X)

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse