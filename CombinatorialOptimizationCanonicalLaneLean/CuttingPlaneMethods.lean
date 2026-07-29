import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure CuttingPlanePackage where
  fractionalSolution : Prop
  validInequality : Prop
  separationOracle : Prop
  finiteConvergence : Prop
  fractionalSolutionClosed : fractionalSolution
  validInequalityClosed : validInequality
  separationOracleClosed : separationOracle
  finiteConvergenceClosed : finiteConvergence

structure CuttingPlaneEvidence (C : CuttingPlanePackage) where
  fractionalSolutionClosed : C.fractionalSolution
  validInequalityClosed : C.validInequality
  separationOracleClosed : C.separationOracle
  finiteConvergenceClosed : C.finiteConvergence

def CuttingPlaneClosed (C : CuttingPlanePackage) : Prop :=
  C.fractionalSolution ∧ C.validInequality ∧ C.separationOracle ∧ C.finiteConvergence

theorem cutting_plane_closed_from_evidence (C : CuttingPlanePackage)
    (E : CuttingPlaneEvidence C) : CuttingPlaneClosed C := by
  exact And.intro E.fractionalSolutionClosed
    (And.intro E.validInequalityClosed
      (And.intro E.separationOracleClosed E.finiteConvergenceClosed))

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse