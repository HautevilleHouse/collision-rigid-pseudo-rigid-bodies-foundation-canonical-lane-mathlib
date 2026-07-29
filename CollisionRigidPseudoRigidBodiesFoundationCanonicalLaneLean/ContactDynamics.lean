import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ContactDynamicsPackage where
  surfaceGeometry : Prop
  frictionModel : Prop
  normalForceConstraint : Prop
  tangentialContactLaw : Prop
  restitutionCoefficient : Prop

structure ContactDynamicsEvidence (C : ContactDynamicsPackage) where
  surfaceGeometryClosed : C.surfaceGeometry
  frictionModelClosed : C.frictionModel
  normalForceConstraintClosed : C.normalForceConstraint
  tangentialContactLawClosed : C.tangentialContactLaw
  restitutionCoefficientClosed : C.restitutionCoefficient

def ContactDynamicsClosed (C : ContactDynamicsPackage) : Prop :=
  C.surfaceGeometry ∧ C.frictionModel ∧ C.normalForceConstraint ∧
  C.tangentialContactLaw ∧ C.restitutionCoefficient

theorem contact_dynamics_closed_from_evidence (C : ContactDynamicsPackage)
    (E : ContactDynamicsEvidence C) : ContactDynamicsClosed C := by
  exact And.intro E.surfaceGeometryClosed
    (And.intro E.frictionModelClosed
      (And.intro E.normalForceConstraintClosed
        (And.intro E.tangentialContactLawClosed E.restitutionCoefficientClosed)))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse