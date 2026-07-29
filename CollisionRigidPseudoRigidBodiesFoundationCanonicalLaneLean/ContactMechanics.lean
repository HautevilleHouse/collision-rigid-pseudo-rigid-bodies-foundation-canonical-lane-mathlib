import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ContactMechanicsPackage where
  contactPoint : ℝ³
  contactNormal : ℝ³
  penetrationDepth : ℝ
  frictionCoefficient : ℝ
  normalForceModel : Prop
  tangentialForceModel : Prop
  impactVelocity : ℝ³
  impulseCalculation : Prop

structure ContactMechanicsEvidence (C : ContactMechanicsPackage) where
  normalForceModelClosed : C.normalForceModel
  tangentialForceModelClosed : C.tangentialForceModel
  impulseCalculationClosed : C.impulseCalculation

def ContactMechanicsClosed (C : ContactMechanicsPackage) : Prop :=
  C.normalForceModel ∧ C.tangentialForceModel ∧ C.impulseCalculation

theorem contact_mechanics_closed_from_evidence
    (C : ContactMechanicsPackage) (E : ContactMechanicsEvidence C) :
    ContactMechanicsClosed C := by
  exact And.intro E.normalForceModelClosed
    (And.intro E.tangentialForceModelClosed E.impulseCalculationClosed)

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse