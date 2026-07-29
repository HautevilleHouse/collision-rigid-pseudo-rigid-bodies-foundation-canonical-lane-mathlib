import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure PseudoRigidBodyApproximationPackage where
  stiffnessDistribution : Prop
  deformationMode : Prop
  equivalentRigidBodyAssumption : Prop
  energyConservationErrorBound : Prop
  complianceTensor : Prop

structure PseudoRigidBodyApproximationEvidence (P : PseudoRigidBodyApproximationPackage) where
  stiffnessDistributionClosed : P.stiffnessDistribution
  deformationModeClosed : P.deformationMode
  equivalentRigidBodyAssumptionClosed : P.equivalentRigidBodyAssumption
  energyConservationErrorBoundClosed : P.energyConservationErrorBound
  complianceTensorClosed : P.complianceTensor

def PseudoRigidBodyApproximationClosed (P : PseudoRigidBodyApproximationPackage) : Prop :=
  P.stiffnessDistribution ∧ P.deformationMode ∧ P.equivalentRigidBodyAssumption ∧
  P.energyConservationErrorBound ∧ P.complianceTensor

theorem pseudo_rigid_body_approximation_closed_from_evidence
    (P : PseudoRigidBodyApproximationPackage)
    (E : PseudoRigidBodyApproximationEvidence P) : PseudoRigidBodyApproximationClosed P := by
  exact And.intro E.stiffnessDistributionClosed
    (And.intro E.deformationModeClosed
      (And.intro E.equivalentRigidBodyAssumptionClosed
        (And.intro E.energyConservationErrorBoundClosed E.complianceTensorClosed)))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse