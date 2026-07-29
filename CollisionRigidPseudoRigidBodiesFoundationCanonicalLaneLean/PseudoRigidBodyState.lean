import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure PseudoRigidBodyState where
  configurationSpace : Type u
  mass : Type v
  inertiaTensor : Type w
  pseudoRigidDeformationParams : Type x
  configurationSmooth : Prop
  massPositive : Prop
  inertiaSymmetricPositiveDefinite : Prop
  deformationParamsSmooth : Prop
  configurationSmoothTerm : configurationSmooth
  massPositiveTerm : massPositive
  inertiaSymmetricPositiveDefiniteTerm : inertiaSymmetricPositiveDefinite
  deformationParamsSmoothTerm : deformationParamsSmooth

structure PseudoRigidBodyStateEvidence (S : PseudoRigidBodyState) where
  configurationSmoothClosed : S.configurationSmooth
  massPositiveClosed : S.massPositive
  inertiaSymmetricPositiveDefiniteClosed : S.inertiaSymmetricPositiveDefinite
  deformationParamsSmoothClosed : S.deformationParamsSmooth

def PseudoRigidBodyStateClosed (S : PseudoRigidBodyState) : Prop :=
  S.configurationSmooth ∧ S.massPositive ∧ S.inertiaSymmetricPositiveDefinite ∧ S.deformationParamsSmooth

theorem pseudo_rigid_body_state_closed_from_evidence (S : PseudoRigidBodyState) (E : PseudoRigidBodyStateEvidence S) :
    PseudoRigidBodyStateClosed S := by
  exact And.intro E.configurationSmoothClosed
    (And.intro E.massPositiveClosed
      (And.intro E.inertiaSymmetricPositiveDefiniteClosed E.deformationParamsSmoothClosed))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse