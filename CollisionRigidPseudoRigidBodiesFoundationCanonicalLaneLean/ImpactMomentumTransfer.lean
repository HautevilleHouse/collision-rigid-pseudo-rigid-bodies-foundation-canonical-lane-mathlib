import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure ImpactMomentumTransferPackage where
  preCollisionMomentum : Prop
  impulseTransferLaw : Prop
  postCollisionMomentum : Prop
  angularMomentumBalance : Prop
  kineticEnergyLoss : Prop

structure ImpactMomentumTransferEvidence (I : ImpactMomentumTransferPackage) where
  preCollisionMomentumClosed : I.preCollisionMomentum
  impulseTransferLawClosed : I.impulseTransferLaw
  postCollisionMomentumClosed : I.postCollisionMomentum
  angularMomentumBalanceClosed : I.angularMomentumBalance
  kineticEnergyLossClosed : I.kineticEnergyLoss

def ImpactMomentumTransferClosed (I : ImpactMomentumTransferPackage) : Prop :=
  I.preCollisionMomentum ∧ I.impulseTransferLaw ∧ I.postCollisionMomentum ∧
  I.angularMomentumBalance ∧ I.kineticEnergyLoss

theorem impact_momentum_transfer_closed_from_evidence
    (I : ImpactMomentumTransferPackage)
    (E : ImpactMomentumTransferEvidence I) : ImpactMomentumTransferClosed I := by
  exact And.intro E.preCollisionMomentumClosed
    (And.intro E.impulseTransferLawClosed
      (And.intro E.postCollisionMomentumClosed
        (And.intro E.angularMomentumBalanceClosed E.kineticEnergyLossClosed)))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse