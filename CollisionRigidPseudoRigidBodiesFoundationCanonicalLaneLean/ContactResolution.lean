import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.CollisionImpulseLaw

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ContactResolutionPackage where
  contactDetection : Prop
  contactPointGeneration : Prop
  penetrationDepth : Prop
  contactNormal : Prop
  contactDetectionClosed : contactDetection
  contactPointGenerationClosed : contactPointGeneration
  penetrationDepthClosed : penetrationDepth
  contactNormalClosed : contactNormal

structure ContactResolutionEvidence (C : ContactResolutionPackage) where
  contactDetectionClosed : C.contactDetection
  contactPointGenerationClosed : C.contactPointGeneration
  penetrationDepthClosed : C.penetrationDepth
  contactNormalClosed : C.contactNormal

def ContactResolutionClosed (C : ContactResolutionPackage) : Prop :=
  C.contactDetection ∧ C.contactPointGeneration ∧ C.penetrationDepth ∧ C.contactNormal

theorem contact_resolution_closed_from_evidence (C : ContactResolutionPackage) (E : ContactResolutionEvidence C) :
    ContactResolutionClosed C := by
  exact And.intro E.contactDetectionClosed
    (And.intro E.contactPointGenerationClosed
      (And.intro E.penetrationDepthClosed E.contactNormalClosed))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse