import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure IntegerProgrammingPackage where
  constraintMatrix : Type u
  rhsVector : Type u
  objectiveVector : Type u
  integerSolutionExists : Prop
  branchAndBoundComplete : Prop
  cuttingPlaneProcedure : Prop
  integralityGap : ℝ

structure IntegerProgrammingEvidence (P : IntegerProgrammingPackage) where
  integerSolutionExistsClosed : P.integerSolutionExists
  branchAndBoundCompleteClosed : P.branchAndBoundComplete
  cuttingPlaneProcedureClosed : P.cuttingPlaneProcedure

def IntegerProgrammingClosed (P : IntegerProgrammingPackage) : Prop :=
  P.integerSolutionExists ∧ P.branchAndBoundComplete ∧ P.cuttingPlaneProcedure

theorem integer_programming_closed_from_evidence
    (P : IntegerProgrammingPackage) (E : IntegerProgrammingEvidence P) :
    IntegerProgrammingClosed P := by
  exact And.intro E.integerSolutionExistsClosed (And.intro E.branchAndBoundCompleteClosed E.cuttingPlaneProcedureClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse