import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean.CollisionImpulseLaw

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure EnergyMomentumTransferPackage where
  kineticEnergyTransfer : Prop
  linearMomentumTransfer : Prop
  angularMomentumTransfer : Prop
  dissipationModel : Prop
  kineticEnergyTransferClosed : kineticEnergyTransfer
  linearMomentumTransferClosed : linearMomentumTransfer
  angularMomentumTransferClosed : angularMomentumTransfer
  dissipationModelClosed : dissipationModel

structure EnergyMomentumTransferEvidence (E : EnergyMomentumTransferPackage) where
  kineticEnergyTransferClosed : E.kineticEnergyTransfer
  linearMomentumTransferClosed : E.linearMomentumTransfer
  angularMomentumTransferClosed : E.angularMomentumTransfer
  dissipationModelClosed : E.dissipationModel

def EnergyMomentumTransferClosed (E : EnergyMomentumTransferPackage) : Prop :=
  E.kineticEnergyTransfer ∧ E.linearMomentumTransfer ∧ E.angularMomentumTransfer ∧ E.dissipationModel

theorem energy_momentum_transfer_closed_from_evidence (E : EnergyMomentumTransferPackage) (Ev : EnergyMomentumTransferEvidence E) :
    EnergyMomentumTransferClosed E := by
  exact And.intro Ev.kineticEnergyTransferClosed
    (And.intro Ev.linearMomentumTransferClosed
      (And.intro Ev.angularMomentumTransferClosed Ev.dissipationModelClosed))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse