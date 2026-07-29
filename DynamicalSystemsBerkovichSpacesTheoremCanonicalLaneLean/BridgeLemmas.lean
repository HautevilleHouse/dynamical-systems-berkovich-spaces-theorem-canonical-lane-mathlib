import DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BerkovichWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse