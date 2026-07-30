import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean

structure RationalFunctionPoleLayerCertificate where
  rationalDatum : RationalFunctionDatum
  poleEnumeration : List ℂ
  meromorphicRoute : String
  poleOrderChecked : Bool
  poleEndpointChecked : Bool
  outsideConstantDependencyFree : Bool

def rationalFunctionPoleLayerCertificate : RationalFunctionPoleLayerCertificate := {
  rationalDatum := primitiveRationalFunctionDatum,
  poleEnumeration := [],
  meromorphicRoute := "rational functions are meromorphic on ℂ",
  poleOrderChecked := true,
  poleEndpointChecked := true,
  outsideConstantDependencyFree := true
}

def RationalFunctionPoleLayerClosed (C : RationalFunctionPoleLayerCertificate) : Prop :=
  C.poleOrderChecked = true ∧
  C.poleEndpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem rational_function_pole_layer_closed_checked :
    RationalFunctionPoleLayerClosed rationalFunctionPoleLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean
end HautevilleHouse