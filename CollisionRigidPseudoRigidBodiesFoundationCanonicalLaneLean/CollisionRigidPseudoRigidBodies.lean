import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure RigidBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ
  angularVelocity : ℝ × ℝ × ℝ

structure PseudoRigidBody where
  mass : ℝ
  centerOfMass : ℝ × ℝ × ℝ
  linearMomentum : ℝ × ℝ × ℝ
  angularMomentum : ℝ × ℝ × ℝ
  deformationState : ℝ

def collisionImpulse (m1 m2 : ℝ) (v1 v2 : ℝ × ℝ × ℝ) (restitution : ℝ) : ℝ × ℝ × ℝ :=
  let relVel : ℝ × ℝ × ℝ := (v1.1 - v2.1, v1.2 - v2.2, v1.3 - v2.3)
  let normal : ℝ × ℝ × ℝ := (1,0,0)
  let relVelNormal : ℝ := relVel.1 * normal.1 + relVel.2 * normal.2 + relVel.3 * normal.3
  let impulseMagnitude : ℝ := (1 + restitution) * relVelNormal / (1/m1 + 1/m2)
  (impulseMagnitude * normal.1, impulseMagnitude * normal.2, impulseMagnitude * normal.3)

structure CollisionEvent where
  time : ℝ
  body1Index : ℕ
  body2Index : ℕ
  restitution : ℝ
  impulse : ℝ × ℝ × ℝ

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse