import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure MatchingIntegerProgrammingPackage where
  bipartiteGraph : Type u
  edgeSet : Set (bipartiteGraph × bipartiteGraph)
  weightFunction : (bipartiteGraph × bipartiteGraph) → ℚ
  totalMatchingCapacity : ℚ
  mipFeasibilityRegion : Set (μ : (bipartiteGraph × bipartiteGraph) → ℚ)
  integralityConstraint : Prop
  coveringConstraintSatisfied : Prop

structure MatchingIntegerProgrammingEvidence (M : MatchingIntegerProgrammingPackage) where
  mipFeasibilityRegionClosed : M.mipFeasibilityRegion ≠ ∅
  integralityConstraintClosed : M.integralityConstraint
  coveringConstraintSatisfiedClosed : M.coveringConstraintSatisfied

def MatchingIntegerProgrammingClosed (M : MatchingIntegerProgrammingPackage) : Prop :=
  M.mipFeasibilityRegion ≠ ∅ ∧ M.integralityConstraint ∧ M.coveringConstraintSatisfied

theorem matching_integer_programming_closed_from_evidence (M : MatchingIntegerProgrammingPackage)
    (E : MatchingIntegerProgrammingEvidence M) : MatchingIntegerProgrammingClosed M := by
  exact And.intro E.mipFeasibilityRegionClosed
    (And.intro E.integralityConstraintClosed E.coveringConstraintSatisfiedClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse
