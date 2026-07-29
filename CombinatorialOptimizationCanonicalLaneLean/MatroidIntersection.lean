import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure MatroidIntersectionPackage where
  matroid1 : Type u
  matroid2 : Type v
  groundSet : Type w
  independentSet1 : Prop
  independentSet2 : Prop
  commonBaseSize : Nat
  exchangeProperty : Prop
  independentSet1Closed : independentSet1
  independentSet2Closed : independentSet2
  exchangePropertyClosed : exchangeProperty

structure MatroidIntersectionEvidence (M : MatroidIntersectionPackage) where
  independentSet1Closed : M.independentSet1
  independentSet2Closed : M.independentSet2
  exchangePropertyClosed : M.exchangeProperty

def MatroidIntersectionClosed (M : MatroidIntersectionPackage) : Prop :=
  M.independentSet1 ∧ M.independentSet2 ∧ M.exchangeProperty

theorem matroid_intersection_closed_from_evidence (M : MatroidIntersectionPackage)
    (E : MatroidIntersectionEvidence M) : MatroidIntersectionClosed M := by
  exact And.intro E.independentSet1Closed (And.intro E.independentSet2Closed E.exchangePropertyClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse