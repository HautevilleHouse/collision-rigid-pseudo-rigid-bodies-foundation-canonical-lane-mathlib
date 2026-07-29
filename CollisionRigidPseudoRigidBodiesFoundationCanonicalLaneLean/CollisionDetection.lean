import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure CollisionDetectionPackage where
  bodyA : Type u
  bodyB : Type v
  boundingVolumeHierarchy : Type w
  narrowPhaseAlgorithm : Type x
  contactPoints : Type y
  collisionDetected : Prop
  contactResolution : Prop
structure CollisionDetectionEvidence (P : CollisionDetectionPackage) where
  collisionDetectedClosed : P.collisionDetected
  contactResolutionClosed : P.contactResolution
def CollisionDetectionClosed (P : CollisionDetectionPackage) : Prop :=
  P.collisionDetected ∧ P.contactResolution
theorem collision_detection_closed_from_evidence (P : CollisionDetectionPackage) (E : CollisionDetectionEvidence P) : CollisionDetectionClosed P := by
  exact And.intro E.collisionDetectedClosed E.contactResolutionClosed

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse