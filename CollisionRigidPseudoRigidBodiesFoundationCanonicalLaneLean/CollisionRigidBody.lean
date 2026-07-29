import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure RigidBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ
  angularVelocity : ℝ × ℝ × ℝ
  inertiaTensor : ℝ × ℝ × ℝ

structure CollisionRigidBody extends RigidBody where
  coefficientOfRestitution : ℝ
  frictionCoefficient : ℝ

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse