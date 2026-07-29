import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.LinearProgrammingDuality

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure IntegerProgram where
  linearObjective : Vector ℝ
  integerConstraints : List (Vector ℤ)
  objectiveType : Minimization ∨ Maximization

def BranchAndBoundState where
  currentBest : ℝ
  activeNodes : List IntegerProgram
  branchingVariable : ℕ
  lowerBound : ℝ
  upperBound : ℝ
  optimalSolutionFound : Prop

def branchAndBoundClosure (I : IntegerProgram) : Prop :=
  OptimalSolutionExists I ∧ BoundingProcedureConverges I

structure OptimalSolutionExists (I : IntegerProgram) where
  optimalValue : ℤ
  optimalPoint : Vector ℤ
  feasibilityVerified : Prop
  optimalityVerified : Prop

structure BoundingProcedureConverges (I : IntegerProgram) where
  finiteTermination : Prop
  noGapRemaining : Prop

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse