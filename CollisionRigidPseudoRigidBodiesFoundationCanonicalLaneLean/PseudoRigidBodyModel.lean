import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure PseudoRigidBodyModelPackage where
  complianceMatrix : Matrix (Fin 3) (Fin 3) ℝ
  dampingCoefficient : ℝ
  restConfiguration : ℝ³
  deformationEnergy : ℝ³ → ℝ
  pseudoRigidDynamics : Prop
  energyConsistency : Prop
  compatibilityWithRigidLimit : Prop

structure PseudoRigidBodyModelEvidence (P : PseudoRigidBodyModelPackage) where
  pseudoRigidDynamicsClosed : P.pseudoRigidDynamics
  energyConsistencyClosed : P.energyConsistency
  compatibilityWithRigidLimitClosed : P.compatibilityWithRigidLimit

def PseudoRigidBodyModelClosed (P : PseudoRigidBodyModelPackage) : Prop :=
  P.pseudoRigidDynamics ∧ P.energyConsistency ∧ P.compatibilityWithRigidLimit

theorem pseudo_rigid_body_model_closed_from_evidence
    (P : PseudoRigidBodyModelPackage) (E : PseudoRigidBodyModelEvidence P) :
    PseudoRigidBodyModelClosed P := by
  exact And.intro E.pseudoRigidDynamicsClosed
    (And.intro E.energyConsistencyClosed E.compatibilityWithRigidLimitClosed)

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse