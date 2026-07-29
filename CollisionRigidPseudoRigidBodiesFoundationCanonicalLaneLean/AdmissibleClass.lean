import CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.CollisionRigidPseudoRigidBodies
import CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.ContactConstraints
import CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.PseudoRigidDeformation
import CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.ImpactResponse

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CollisionRigidPseudoRigidBodies RigidBody PseudoRigidBody
  contactConstraint : ContactConstraint
  deformationMode : DeformationMode
  impactResponse : ImpactResponse
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.collisionLawEstablished ∧ A.contactConstraint.active) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse