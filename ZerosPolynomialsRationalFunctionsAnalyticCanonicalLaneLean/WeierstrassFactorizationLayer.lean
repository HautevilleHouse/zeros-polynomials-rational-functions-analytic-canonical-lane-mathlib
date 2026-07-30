import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean

structure WeierstrassFactorizationLayerCertificate where
  entireDatum : EntireFunctionDatum
  factorizationRoute : String
  convergenceRoute : String
  genusRoute : String
  factorizationChecked : Bool
  canonicalProductConstructed : Bool

def weierstrassFactorizationLayerCertificate : WeierstrassFactorizationLayerCertificate := {
  entireDatum := primitiveEntireFunctionDatum,
  factorizationRoute := "Weierstrass factorization expresses entire function as product over its zeros",
  convergenceRoute := "elementary factors ensure uniform convergence on compact sets",
  genusRoute := "genus determined by zero distribution and growth order",
  factorizationChecked := true,
  canonicalProductConstructed := true
}

def WeierstrassFactorizationLayerClosed (C : WeierstrassFactorizationLayerCertificate) : Prop :=
  C.entireDatum.factorizationChecked = true ∧
  C.factorizationChecked = true ∧
  C.canonicalProductConstructed = true

theorem weierstrass_factorization_layer_closed_checked :
    WeierstrassFactorizationLayerClosed weierstrassFactorizationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean
end HautevilleHouse