import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure TotalUnimodularityClosurePackage where
  matrixBody : Type u
  determinantBound : ℚ
  allSubdeterminantsInSet : Set ℚ
  totalUnimodularityCondition : Prop
  integralPolyhedronVertices : Prop
  lpHoldsForIntegralRHS : Prop

structure TotalUnimodularityClosureEvidence (T : TotalUnimodularityClosurePackage) where
  totalUnimodularityConditionClosed : T.totalUnimodularityCondition
  integralPolyhedronVerticesClosed : T.integralPolyhedronVertices
  lpHoldsForIntegralRHSClosed : T.lpHoldsForIntegralRHS

def TotalUnimodularityClosureClosed (T : TotalUnimodularityClosurePackage) : Prop :=
  T.totalUnimodularityCondition ∧ T.integralPolyhedronVertices ∧ T.lpHoldsForIntegralRHS

theorem total_unimodularity_closure_closed_from_evidence (T : TotalUnimodularityClosurePackage)
    (E : TotalUnimodularityClosureEvidence T) : TotalUnimodularityClosureClosed T := by
  exact And.intro E.totalUnimodularityConditionClosed
    (And.intro E.integralPolyhedronVerticesClosed E.lpHoldsForIntegralRHSClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse
