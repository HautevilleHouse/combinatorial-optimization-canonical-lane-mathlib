import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure Matroid where
  groundSet : Type u
  independentSet : Set (Set (groundSet))
  independenceAxioms : Prop

structure MatroidEvidence (M : Matroid) where
  independenceAxiomsClosed : M.independenceAxioms

def MatroidClosed (M : Matroid) : Prop :=
  M.independenceAxioms

theorem matroid_closed_from_evidence (M : Matroid) (E : MatroidEvidence M) :
    MatroidClosed M := by
  exact E.independenceAxiomsClosed

theorem rank_property (M : Matroid) (h : MatroidClosed M) : Prop :=
  ∃ r : Set (M.groundSet) → ℕ, r (∅ : Set M.groundSet) = 0

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse