import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean

structure CollisionResponseFoundationPackage where
  restitutionModel : Prop
  frictionModel : Prop
  contactStiffness : Prop
  impactRegularization : Prop
  numericalStability : Prop
  consistencyWithPhysicalLaws : Prop

structure CollisionResponseFoundationEvidence (C : CollisionResponseFoundationPackage) where
  restitutionModelClosed : C.restitutionModel
  frictionModelClosed : C.frictionModel
  contactStiffnessClosed : C.contactStiffness
  impactRegularizationClosed : C.impactRegularization
  numericalStabilityClosed : C.numericalStability
  consistencyWithPhysicalLawsClosed : C.consistencyWithPhysicalLaws

def CollisionResponseFoundationClosed (C : CollisionResponseFoundationPackage) : Prop :=
  C.restitutionModel ∧ C.frictionModel ∧
  C.contactStiffness ∧ C.impactRegularization ∧
  C.numericalStability ∧ C.consistencyWithPhysicalLaws

theorem collision_response_foundation_closed_from_evidence
    (C : CollisionResponseFoundationPackage) (E : CollisionResponseFoundationEvidence C) :
    CollisionResponseFoundationClosed C := by
  exact And.intro E.restitutionModelClosed
    (And.intro E.frictionModelClosed
      (And.intro E.contactStiffnessClosed
        (And.intro E.impactRegularizationClosed
          (And.intro E.numericalStabilityClosed E.consistencyWithPhysicalLawsClosed))))

end CollisionRigidPseudoRigidBodiesFoundationCanonicalLaneLean
end HautevilleHouse