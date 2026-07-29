import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure ApproximationAlgorithmPerformancePackage where
  problemInstance : Type u
  optimalValue : ℚ
  algorithmValue : ℚ
  approximationRatio : ℚ
  guaranteeHolds : Prop
  runtimeBound : Prop
  algorithmDescription : String

structure ApproximationAlgorithmPerformanceEvidence (A : ApproximationAlgorithmPerformancePackage) where
  algorithmValueClosed : A.algorithmValue ≠ 0
  guaranteeHoldsClosed : A.guaranteeHolds
  runtimeBoundClosed : A.runtimeBound

def ApproximationAlgorithmPerformanceClosed (A : ApproximationAlgorithmPerformancePackage) : Prop :=
  A.algorithmValue ≠ 0 ∧ A.guaranteeHolds ∧ A.runtimeBound

theorem approximation_algorithm_performance_closed_from_evidence (A : ApproximationAlgorithmPerformancePackage)
    (E : ApproximationAlgorithmPerformanceEvidence A) : ApproximationAlgorithmPerformanceClosed A := by
  exact And.intro E.algorithmValueClosed
    (And.intro E.guaranteeHoldsClosed E.runtimeBoundClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse
