import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure MultibodyCollisionSystemPackage where
  bodies : List (Type u)
  joints : Type v
  collisionEvents : Type w
  constraintSolver : Type x
  stabilityCriterion : Prop
  convergenceGuarantee : Prop
structure MultibodyCollisionSystemEvidence (P : MultibodyCollisionSystemPackage) where
  stabilityCriterionClosed : P.stabilityCriterion
  convergenceGuaranteeClosed : P.convergenceGuarantee
def MultibodyCollisionSystemClosed (P : MultibodyCollisionSystemPackage) : Prop :=
  P.stabilityCriterion ∧ P.convergenceGuarantee
theorem multibody_collision_system_closed_from_evidence (P : MultibodyCollisionSystemPackage) (E : MultibodyCollisionSystemEvidence P) : MultibodyCollisionSystemClosed P := by
  exact And.intro E.stabilityCriterionClosed E.convergenceGuaranteeClosed

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse