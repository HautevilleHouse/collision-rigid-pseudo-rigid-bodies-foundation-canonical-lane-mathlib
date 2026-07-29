import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure RigidBodyDynamicsPackage where
  body : Type u
  position : body → Type v
  velocity : body → Type w
  mass : body → ℚ
  inertia : body → Matrix (Fin 3) (Fin 3) ℚ
  momentum : body → Type x
  kineticEnergy : body → ℚ
  angularVelocity : body → Type y
  equationsOfMotion : Prop
  conservedQuantities : Prop
structure RigidBodyDynamicsEvidence (P : RigidBodyDynamicsPackage) where
  equationsOfMotionClosed : P.equationsOfMotion
  conservedQuantitiesClosed : P.conservedQuantities
def RigidBodyDynamicsClosed (P : RigidBodyDynamicsPackage) : Prop :=
  P.equationsOfMotion ∧ P.conservedQuantities
theorem rigid_body_dynamics_closed_from_evidence (P : RigidBodyDynamicsPackage) (E : RigidBodyDynamicsEvidence P) : RigidBodyDynamicsClosed P := by
  exact And.intro E.equationsOfMotionClosed E.conservedQuantitiesClosed

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse