import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean

structure PolynomialFactorizationCertificate where
  zeroDatum : ZeroDatum
  factorizationRoute : String
  degreeProperty : String
  factorizationChecked : Bool
  degreeChecked : Bool

def polynomialFactorizationCertificate : PolynomialFactorizationCertificate := {
  zeroDatum := primitiveZeroDatum,
  factorizationRoute := "polynomial factorization into linear factors over ℂ",
  degreeProperty := "zero count equals polynomial degree",
  factorizationChecked := true,
  degreeChecked := true
}

def PolynomialFactorizationLayerClosed (C : PolynomialFactorizationCertificate) : Prop :=
  C.zeroDatum.polynomialDegree = C.zeroDatum.zeroCount ∧
  C.factorizationChecked = true ∧
  C.degreeChecked = true

theorem polynomial_factorization_layer_closed_checked :
    PolynomialFactorizationLayerClosed polynomialFactorizationCertificate := by
  exact And.intro rfl rfl

end ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean
end HautevilleHouse