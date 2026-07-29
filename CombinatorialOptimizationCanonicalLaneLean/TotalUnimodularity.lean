import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure TotalUnimodularityPackage where
  matrix : Type u
  rows : Nat
  cols : Nat
  entries : List (List Int)
  determinantProperty : Prop
  squareSubmatrixDeterminant : Prop
  determinantPropertyClosed : determinantProperty
  squareSubmatrixDeterminantClosed : squareSubmatrixDeterminant

structure TotalUnimodularityEvidence (T : TotalUnimodularityPackage) where
  determinantPropertyClosed : T.determinantProperty
  squareSubmatrixDeterminantClosed : T.squareSubmatrixDeterminant

def TotalUnimodularityClosed (T : TotalUnimodularityPackage) : Prop :=
  T.determinantProperty ∧ T.squareSubmatrixDeterminant

theorem total_unimodularity_closed_from_evidence (T : TotalUnimodularityPackage)
    (E : TotalUnimodularityEvidence T) : TotalUnimodularityClosed T := by
  exact And.intro E.determinantPropertyClosed E.squareSubmatrixDeterminantClosed

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse