import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.LinearProgrammingDuality

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure FlowNetwork where
  source : Node
  sink : Node
  capacities : Edge → ℝ
  vertices : Set Node
  edges : Set Edge

structure Cut (N : FlowNetwork) where
  partition : Set Node
  capacity : ℝ
  containsSource : source ∈ partition
  doesNotContainSink : sink ∉ partition

structure MaxFlow (N : FlowNetwork) where
  flowValue : ℝ
  flowAssignment : Edge → ℝ
  capacityConstraints : ∀ e : Edge, 0 ≤ flowAssignment e ∧ flowAssignment e ≤ N.capacities e
  flowConservation : ∀ v : Node, v ≠ N.source ∧ v ≠ N.sink →
    (∑ e in edgesIncidentOut v, flowAssignment e) = (∑ e in edgesIncidentIn v, flowAssignment e)

def minCutCapacity (C : Cut N) : ℝ := C.capacity

theorem maxFlowMinCut (M : MaxFlow N) (C : Cut N) : M.flowValue ≤ C.capacity := by
  sorry

theorem maxFlowEqualsMinCut (N : FlowNetwork) :
    ∃ (M : MaxFlow N) (C : Cut N), M.flowValue = C.capacity := by
  sorry

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse