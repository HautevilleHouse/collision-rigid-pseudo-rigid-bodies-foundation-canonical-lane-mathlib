import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.PseudoRigidBodyState

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ConstraintDynamicsPackage where
  bilateralConstraints : Prop
  unilateralConstraints : Prop
  constraintJacobians : Prop
  constraintStabilization : Prop
  bilateralConstraintsClosed : bilateralConstraints
  unilateralConstraintsClosed : unilateralConstraints
  constraintJacobiansClosed : constraintJacobians
  constraintStabilizationClosed : constraintStabilization

structure ConstraintDynamicsEvidence (C : ConstraintDynamicsPackage) where
  bilateralConstraintsClosed : C.bilateralConstraints
  unilateralConstraintsClosed : C.unilateralConstraints
  constraintJacobiansClosed : C.constraintJacobians
  constraintStabilizationClosed : C.constraintStabilization

def ConstraintDynamicsClosed (C : ConstraintDynamicsPackage) : Prop :=
  C.bilateralConstraints ∧ C.unilateralConstraints ∧ C.constraintJacobians ∧ C.constraintStabilization

theorem constraint_dynamics_closed_from_evidence (C : ConstraintDynamicsPackage) (E : ConstraintDynamicsEvidence C) :
    ConstraintDynamicsClosed C := by
  exact And.intro E.bilateralConstraintsClosed
    (And.intro E.unilateralConstraintsClosed
      (And.intro E.constraintJacobiansClosed E.constraintStabilizationClosed))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse