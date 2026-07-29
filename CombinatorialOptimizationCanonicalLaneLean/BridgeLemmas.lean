import HautevilleHouse.CombinatorialOptimizationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OptimizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    exact A.object.conclusion

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse