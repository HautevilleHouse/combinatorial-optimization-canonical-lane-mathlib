import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure IntegerProgram where
  matrixType : Type u
  costVector : matrixType → ℝ
  integralityConstraint : Prop
  objectiveBound : Prop

structure IntegerProgramEvidence (P : IntegerProgram) where
  integralityConstraintClosed : P.integralityConstraint
  objectiveBoundClosed : P.objectiveBound

def IntegerProgramClosed (P : IntegerProgram) : Prop :=
  P.integralityConstraint ∧ P.objectiveBound

theorem integer_program_closed_from_evidence (P : IntegerProgram) (E : IntegerProgramEvidence P) :
    IntegerProgramClosed P := by
  exact And.intro E.integralityConstraintClosed E.objectiveBoundClosed

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse