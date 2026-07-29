import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure IntegerPolytopePackage where
  polytope : Type u
  dimension : Nat
  vertices : List (Polytope.Point)
  integerVertices : Prop
  bounded : Prop
  hrepresentation : Prop
  integerVerticesClosed : integerVertices
  boundedClosed : bounded
  hrepresentationClosed : hrepresentation

structure IntegerPolytopeEvidence (P : IntegerPolytopePackage) where
  integerVerticesClosed : P.integerVertices
  boundedClosed : P.bounded
  hrepresentationClosed : P.hrepresentation

def IntegerPolytopeClosed (P : IntegerPolytopePackage) : Prop :=
  P.integerVertices ∧ P.bounded ∧ P.hrepresentation

theorem integer_polytope_closed_from_evidence (P : IntegerPolytopePackage)
    (E : IntegerPolytopeEvidence P) : IntegerPolytopeClosed P := by
  exact And.intro E.integerVerticesClosed (And.intro E.boundedClosed E.hrepresentationClosed)

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse