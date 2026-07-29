import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationCanonicalLaneLean

structure OptimizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OptimizationAdmittedObject where
  space : OptimizationSpace
  objectiveIsLinear : Prop
  feasibleSetIsConvex : Prop
  optimumExists : Prop
  conclusion : optimumExists

structure OptimizationEndgameState where
  object : OptimizationAdmittedObject

def OptimizationWitnessClosed (O : OptimizationAdmittedObject) : Prop :=
  O.optimumExists

end CombinatorialOptimizationCanonicalLaneLean
end HautevilleHouse