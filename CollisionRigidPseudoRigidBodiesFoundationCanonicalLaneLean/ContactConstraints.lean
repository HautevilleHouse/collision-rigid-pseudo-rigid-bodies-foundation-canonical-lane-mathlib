import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ContactPoint where
  position : ℝ × ℝ × ℝ
  normal : ℝ × ℝ × ℝ
  penetrationDepth : ℝ

structure ContactConstraint where
  active : Prop
  normalForce : ℝ
  tangentialForce : ℝ × ℝ × ℝ
  frictionCoefficient : ℝ

def solveConstraint (constraint : ContactConstraint) (dt : ℝ) : ℝ × ℝ × ℝ :=
  (constraint.normalForce * (1,0,0)).1 + constraint.tangentialForce.1,
  (constraint.normalForce * (1,0,0)).2 + constraint.tangentialForce.2,
  (constraint.normalForce * (1,0,0)).3 + constraint.tangentialForce.3

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse