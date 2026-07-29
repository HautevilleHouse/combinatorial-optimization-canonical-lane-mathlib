import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure ApproximationAlgorithmPackage where
  problem : Type u
  optimalValue : Prop
  algorithmOutput : Prop
  approximationRatio : Rat
  polynomialTime : Prop
  correctness : Prop
  optimalValueClosed : optimalValue
  algorithmOutputClosed : algorithmOutput
  polynomialTimeClosed : polynomialTime
  correctnessClosed : correctness

structure ApproximationAlgorithmEvidence (A : ApproximationAlgorithmPackage) where
  optimalValueClosed : A.optimalValue
  algorithmOutputClosed : A.algorithmOutput
  polynomialTimeClosed : A.polynomialTime
  correctnessClosed : A.correctness

def ApproximationAlgorithmClosed (A : ApproximationAlgorithmPackage) : Prop :=
  A.optimalValue ∧ A.algorithmOutput ∧ A.polynomialTime ∧ A.correctness

theorem approximation_algorithm_closed_from_evidence
    (A : ApproximationAlgorithmPackage)
    (E : ApproximationAlgorithmEvidence A) : ApproximationAlgorithmClosed A := by
  exact And.intro E.optimalValueClosed
    (And.intro E.algorithmOutputClosed
      (And.intro E.polynomialTimeClosed E.correctnessClosed))

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse