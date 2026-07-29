import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure PolyhedralDualIntegralityGapPackage where
  primalPolyhedron : Set (ℚ^n)
  dualPolyhedron : Set (ℚ^m)
  integralityGap : ℚ
  objectiveFunction : ℚ^n → ℚ
  constraintMatrix : Matrix n m ℚ
  feasibilityCondition : Prop
  strongDualityHolds : Prop

structure PolyhedralDualIntegralityGapEvidence (P : PolyhedralDualIntegralityGapPackage) where
  feasibilityConditionClosed : P.feasibilityCondition
  strongDualityHoldsClosed : P.strongDualityHolds
  integralityGapClosed : P.integralityGap ≤ 0

def PolyhedralDualIntegralityGapClosed (P : PolyhedralDualIntegralityGapPackage) : Prop :=
  P.feasibilityCondition ∧ P.strongDualityHolds ∧ P.integralityGap ≤ 0

theorem polyhedral_dual_integrality_gap_closed_from_evidence (P : PolyhedralDualIntegralityGapPackage)
    (E : PolyhedralDualIntegralityGapEvidence P) : PolyhedralDualIntegralityGapClosed P := by
  exact And.intro E.feasibilityConditionClosed
    (And.intro E.strongDualityHoldsClosed E.integralityGapClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse
