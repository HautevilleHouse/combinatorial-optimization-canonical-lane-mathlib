import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure Polyhedron where
  vertices : Prop
  facets : Prop
  extremePoints : Prop
  recessionCone : Prop
  boundedness : Prop

structure PolyhedralPackage (P : Polyhedron) where
  verticesClosed : P.vertices
  facetsClosed : P.facets
  extremePointsClosed : P.extremePoints
  recessionConeClosed : P.recessionCone
  boundednessClosed : P.boundedness

def PolyhedralClosed (P : Polyhedron) : Prop :=
  P.vertices ∧ P.facets ∧ P.extremePoints ∧ P.recessionCone ∧ P.boundedness

theorem polyhedral_closed_from_evidence (P : Polyhedron) (E : PolyhedralPackage P) : PolyhedralClosed P :=
  And.intro E.verticesClosed (And.intro E.facetsClosed (And.intro E.extremePointsClosed (And.intro E.recessionConeClosed E.boundednessClosed)))

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse