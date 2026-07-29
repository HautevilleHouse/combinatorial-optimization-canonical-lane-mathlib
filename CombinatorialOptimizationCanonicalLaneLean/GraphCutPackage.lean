import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure GraphCutPackage where
  graph : Type u
  source : graph → Prop
  sink : graph → Prop
  capacity : graph → graph → ℝ
  cutDefined : Prop
  minCutFound : Prop
  maxFlowMinCutTheorem : Prop

structure GraphCutEvidence (P : GraphCutPackage) where
  cutDefinedClosed : P.cutDefined
  minCutFoundClosed : P.minCutFound
  maxFlowMinCutTheoremClosed : P.maxFlowMinCutTheorem

def GraphCutClosed (P : GraphCutPackage) : Prop :=
  P.cutDefined ∧ P.minCutFound ∧ P.maxFlowMinCutTheorem

theorem graph_cut_closed_from_evidence (P : GraphCutPackage) (E : GraphCutEvidence P) :
    GraphCutClosed P := by
  exact And.intro E.cutDefinedClosed (And.intro E.minCutFoundClosed E.maxFlowMinCutTheoremClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse