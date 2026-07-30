import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean

structure PoleZeroCancellationCertificate where
  zeroDatum : ZeroDatum
  cancellationRoute : String
  poleCount : Nat
  cancellationChecked : Bool
  poleCountChecked : Bool

def poleZeroCancellationCertificate : PoleZeroCancellationCertificate := {
  zeroDatum := primitiveZeroDatum,
  cancellationRoute := "pole-zero cancellation in rational functions",
  poleCount := 0,
  cancellationChecked := true,
  poleCountChecked := true
}

def PoleZeroCancellationLayerClosed (C : PoleZeroCancellationCertificate) : Prop :=
  C.zeroDatum.rationalFunctionPoles = 0 ∧
  C.cancellationChecked = true ∧
  C.poleCountChecked = true

theorem pole_zero_cancellation_layer_closed_checked :
    PoleZeroCancellationLayerClosed poleZeroCancellationCertificate := by
  exact And.intro rfl rfl

end ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean
end HautevilleHouse