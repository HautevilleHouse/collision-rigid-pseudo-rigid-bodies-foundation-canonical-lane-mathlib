import canonicalLaneMathlib.AdmissibleClass
import CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.RigidBody

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure CollisionEvent where
  bodyA : CollisionRigidBody
  bodyB : CollisionRigidBody
  contact : ContactPoint
  preCollisionVelocities : (ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ)
  postCollisionVelocities : (ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ)

structure CollisionResolution where
  impulse : ImpulseResponse
  momentumConservation : Prop
  energyConservation : Prop
  restitutionLaw : Prop
  frictionLaw : Prop

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse