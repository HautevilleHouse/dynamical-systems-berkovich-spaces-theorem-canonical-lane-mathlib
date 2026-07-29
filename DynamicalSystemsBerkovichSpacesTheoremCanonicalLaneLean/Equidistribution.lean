import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure Equidistribution (X : Type u) [TopologicalSpace X] (D : DynamicalSystem X) where
  invariantMeasure : Set (Set X) → ℝ
  measurePreserving : ∀ n s, invariantMeasure (D.action n '' s) = invariantMeasure s
  equidistribution : ∀ f : X → ℝ, Continuous f →
    (∀ x, filter.Tendsto (λ n : ℕ => (∑ i in Finset.range n, f (D.action i x)) / (n : ℝ)) filter.atTop (𝓝 (∫ x, f x ∂invariantMeasure)))

def EquidistributionClosed (E : Equidistribution X D) : Prop :=
  E.measurePreserving 0 Set.univ ∧ E.equidistribution (λ x => 0) continuous_const

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse