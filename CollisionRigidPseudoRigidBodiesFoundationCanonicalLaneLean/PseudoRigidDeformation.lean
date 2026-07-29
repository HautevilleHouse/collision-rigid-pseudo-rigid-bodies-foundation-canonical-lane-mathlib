import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure PseudoRigidDeformation where
  translation : ℝ × ℝ × ℝ
  rotation : ℝ × ℝ × ℝ
  scaling : ℝ

structure DeformationGradient where
  F : ℝ → ℝ × ℝ × ℝ → ℝ × ℝ × ℝ
  polarDecomposition : Prop
  stretchTensor : ℝ × ℝ × ℝ → ℝ × ℝ × ℝ
  rotationTensor : ℝ × ℝ × ℝ → ℝ × ℝ × ℝ

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse