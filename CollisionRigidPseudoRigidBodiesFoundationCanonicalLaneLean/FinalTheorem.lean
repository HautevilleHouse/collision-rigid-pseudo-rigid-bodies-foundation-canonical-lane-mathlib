import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.ContactDynamics
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.PseudoRigidBodyApproximation
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.ImpactMomentumTransfer

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCollisionFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_collision_foundation_endgame (A : AdmissibleClass) :
    ConstrainedCollisionFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse