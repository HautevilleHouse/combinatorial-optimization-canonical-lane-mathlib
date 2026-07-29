import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure LinearProgrammingDualityPackage where
  primalLP : Type u
  dualLP : Type v
  objectivePrimal : Prop
  constraintsPrimal : Prop
  objectiveDual : Prop
  constraintsDual : Prop
  strongDuality : Prop
  weakDuality : Prop
  strongDualityClosed : strongDuality
  weakDualityClosed : weakDuality

structure LinearProgrammingDualityEvidence (L : LinearProgrammingDualityPackage) where
  strongDualityClosed : L.strongDuality
  weakDualityClosed : L.weakDuality

def LinearProgrammingDualityClosed (L : LinearProgrammingDualityPackage) : Prop :=
  L.strongDuality ∧ L.weakDuality

theorem linear_programming_duality_closed_from_evidence
    (L : LinearProgrammingDualityPackage)
    (E : LinearProgrammingDualityEvidence L) : LinearProgrammingDualityClosed L := by
  exact And.intro E.strongDualityClosed E.weakDualityClosed

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse