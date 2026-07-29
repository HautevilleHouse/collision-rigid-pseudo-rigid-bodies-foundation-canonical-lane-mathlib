import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure MultibodyDynamicsPackage where
  numBodies : ℕ
  bodyPackages : List RigidBodyDynamicsPackage
  pseudoRigidPackages : List PseudoRigidBodyModelPackage
  jointConstraints : Prop
  constraintRegularization : Prop
  coupledEquations : Prop
  energyConservationMultiBody : Prop
  momentumConservationMultiBody : Prop

structure MultibodyDynamicsEvidence (M : MultibodyDynamicsPackage) where
  jointConstraintsClosed : M.jointConstraints
  constraintRegularizationClosed : M.constraintRegularization
  coupledEquationsClosed : M.coupledEquations
  energyConservationMultiBodyClosed : M.energyConservationMultiBody
  momentumConservationMultiBodyClosed : M.momentumConservationMultiBody

def MultibodyDynamicsClosed (M : MultibodyDynamicsPackage) : Prop :=
  M.jointConstraints ∧ M.constraintRegularization ∧
  M.coupledEquations ∧ M.energyConservationMultiBody ∧
  M.momentumConservationMultiBody

theorem multibody_dynamics_closed_from_evidence
    (M : MultibodyDynamicsPackage) (E : MultibodyDynamicsEvidence M) :
    MultibodyDynamicsClosed M := by
  exact And.intro E.jointConstraintsClosed
    (And.intro E.constraintRegularizationClosed
      (And.intro E.coupledEquationsClosed
        (And.intro E.energyConservationMultiBodyClosed
          E.momentumConservationMultiBodyClosed)))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse