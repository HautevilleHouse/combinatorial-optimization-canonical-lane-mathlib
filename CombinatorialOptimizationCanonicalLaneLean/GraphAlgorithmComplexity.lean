import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure GraphProblem where
  graph : Prop
  objective : Prop
  algorithm : Prop
  complexityBound : Prop
  optimalityGuarantee : Prop

structure GraphAlgorithmPackage (G : GraphProblem) where
  graphClosed : G.graph
  objectiveClosed : G.objective
  algorithmClosed : G.algorithm
  complexityBoundClosed : G.complexityBound
  optimalityGuaranteeClosed : G.optimalityGuarantee

def GraphAlgorithmClosed (G : GraphProblem) : Prop :=
  G.graph ∧ G.objective ∧ G.algorithm ∧ G.complexityBound ∧ G.optimalityGuarantee

theorem graph_algorithm_closed_from_evidence (G : GraphProblem) (E : GraphAlgorithmPackage G) : GraphAlgorithmClosed G :=
  And.intro E.graphClosed (And.intro E.objectiveClosed (And.intro E.algorithmClosed (And.intro E.complexityBoundClosed E.optimalityGuaranteeClosed)))

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse