import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure KineticEnergy where
  translational : ℝ
  rotational : ℝ
  total : ℝ

structure LinearMomentum where
  vector : ℝ × ℝ × ℝ
  magnitude : ℝ

structure AngularMomentum where
  vector : ℝ × ℝ × ℝ
  magnitude : ℝ

structure EnergyMomentumConservation where
  preCollision : KineticEnergy × LinearMomentum × AngularMomentum
  postCollision : KineticEnergy × LinearMomentum × AngularMomentum
  conservationLaws : Prop

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse