import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean

structure BerkovichSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure BerkovichAdmittedObject where
  space : BerkovichSpace
  isProjectiveLine : Prop
  dynamicalSystemDefined : Prop
  zetaFunctionDefined : Prop
  conclusion : zetaFunctionDefined

def BerkovichWitnessClosed (O : BerkovichAdmittedObject) : Prop :=
  O.zetaFunctionDefined

end DynamicalSystemsBerkovichSpacesTheoremCanonicalLaneLean
end HautevilleHouse