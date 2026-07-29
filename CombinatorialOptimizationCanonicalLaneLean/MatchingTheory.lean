import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure BipartiteMatching where
  leftVertices : Type u
  rightVertices : Type v
  edges : Set (leftVertices × rightVertices)
  matchingProperty : Prop

structure MatchingEvidence (M : BipartiteMatching) where
  matchingPropertyClosed : M.matchingProperty

def MatchingClosed (M : BipartiteMapping) : Prop :=
  M.matchingProperty

theorem matching_closed_from_evidence (M : BipartiteMatching) (E : MatchingEvidence M) :
    MatchingClosed M := by
  exact E.matchingPropertyClosed

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse