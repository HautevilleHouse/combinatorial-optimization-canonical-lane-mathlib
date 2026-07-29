import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure CuttingPlaneMethod where
  initialInequalities : Prop
  separationOracle : Prop
  validInequalitiesGenerated : Prop
  finiteConvergence : Prop
  integralityRecovered : Prop

structure CuttingPlanePackage (C : CuttingPlaneMethod) where
  initialInequalitiesClosed : C.initialInequalities
  separationOracleClosed : C.separationOracle
  validInequalitiesGeneratedClosed : C.validInequalitiesGenerated
  finiteConvergenceClosed : C.finiteConvergence
  integralityRecoveredClosed : C.integralityRecovered

def CuttingPlaneClosed (C : CuttingPlaneMethod) : Prop :=
  C.initialInequalities ∧ C.separationOracle ∧ C.validInequalitiesGenerated ∧ C.finiteConvergence ∧ C.integralityRecovered

theorem cutting_plane_closed_from_evidence (C : CuttingPlaneMethod) (E : CuttingPlanePackage C) : CuttingPlaneClosed C :=
  And.intro E.initialInequalitiesClosed (And.intro E.separationOracleClosed (And.intro E.validInequalitiesGeneratedClosed (And.intro E.finiteConvergenceClosed E.integralityRecoveredClosed)))

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse