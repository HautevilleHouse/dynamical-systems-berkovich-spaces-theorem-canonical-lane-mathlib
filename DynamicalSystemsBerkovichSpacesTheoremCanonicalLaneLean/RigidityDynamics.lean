import DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.PotentialTheoryBerkovich

/-!
# Rigidity of Dynamical Systems on Berkovich Space Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure RigidityDynamicsPackage {P : PotentialTheoryBerkovichPackage}
    (R : PotentialTheoryBerkovichPackage) where
  repellingCyclesClassified : Prop
  equidistributionRepelling : Prop
  lyapunovExponentPositive : Prop
  mixingProperty : Prop

structure RigidityDynamicsEvidence {P : PotentialTheoryBerkovichPackage}
    {R : PotentialTheoryBerkovichPackage} (D : RigidityDynamicsPackage R) where
  repellingCyclesClassifiedClosed : D.repellingCyclesClassified
  equidistributionRepellingClosed : D.equidistributionRepelling
  lyapunovExponentPositiveClosed : D.lyapunovExponentPositive
  mixingPropertyClosed : D.mixingProperty

def RigidityDynamicsClosed {P : PotentialTheoryBerkovichPackage}
    {R : PotentialTheoryBerkovichPackage} (D : RigidityDynamicsPackage R) : Prop :=
  D.repellingCyclesClassified ∧ D.equidistributionRepelling ∧
  D.lyapunovExponentPositive ∧ D.mixingProperty

theorem rigidity_dynamics_closed_from_evidence
    {P : PotentialTheoryBerkovichPackage} {R : PotentialTheoryBerkovichPackage}
    (D : RigidityDynamicsPackage R) (E : RigidityDynamicsEvidence D) :
    RigidityDynamicsClosed D := by
  exact And.intro E.repellingCyclesClassifiedClosed
    (And.intro E.equidistributionRepellingClosed
      (And.intro E.lyapunovExponentPositiveClosed E.mixingPropertyClosed))

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse