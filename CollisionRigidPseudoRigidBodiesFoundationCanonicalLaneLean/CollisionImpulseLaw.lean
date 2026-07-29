import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.PseudoRigidBodyState

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure CollisionImpulseLawPackage where
  coefficientOfRestitution : Prop
  frictionCoefficient : Prop
  impulseResolution : Prop
  tangentialCompliance : Prop
  normalCompliance : Prop
  coefficientOfRestitutionClosed : coefficientOfRestitution
  frictionCoefficientClosed : frictionCoefficient
  impulseResolutionClosed : impulseResolution
  tangentialComplianceClosed : tangentialCompliance
  normalComplianceClosed : normalCompliance

structure CollisionImpulseLawEvidence (C : CollisionImpulseLawPackage) where
  coefficientOfRestitutionClosed : C.coefficientOfRestitution
  frictionCoefficientClosed : C.frictionCoefficient
  impulseResolutionClosed : C.impulseResolution
  tangentialComplianceClosed : C.tangentialCompliance
  normalComplianceClosed : C.normalCompliance

def CollisionImpulseLawClosed (C : CollisionImpulseLawPackage) : Prop :=
  C.coefficientOfRestitution ∧ C.frictionCoefficient ∧ C.impulseResolution ∧ C.tangentialCompliance ∧ C.normalCompliance

theorem collision_impulse_law_closed_from_evidence (C : CollisionImpulseLawPackage) (E : CollisionImpulseLawEvidence C) :
    CollisionImpulseLawClosed C := by
  exact And.intro E.coefficientOfRestitutionClosed
    (And.intro E.frictionCoefficientClosed
      (And.intro E.impulseResolutionClosed
        (And.intro E.tangentialComplianceClosed E.normalComplianceClosed)))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse