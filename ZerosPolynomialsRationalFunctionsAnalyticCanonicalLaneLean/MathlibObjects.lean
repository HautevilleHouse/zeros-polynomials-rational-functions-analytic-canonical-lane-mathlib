import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean

structure PolynomialDatum where
  degree : Nat
  leadingCoeff : ℂ
  zeroSet : Set ℂ

def primitivePolynomialDatum : PolynomialDatum := {
  degree := 0,
  leadingCoeff := 0,
  zeroSet := Set.univ
}

structure RationalFunctionDatum where
  numeratorZeros : Set ℂ
  denominatorZeros : Set ℂ
  poles : Set ℂ
  analyticExceptPoles : Bool

def primitiveRationalFunctionDatum : RationalFunctionDatum := {
  numeratorZeros := Set.univ,
  denominatorZeros := Set.univ,
  poles := Set.univ,
  analyticExceptPoles := true
}

structure AnalyticZeroDatum where
  functionType : String
  zeroLocus : Set ℂ
  analyticDominanceRegion : Set ℂ
  zeroOrder : Nat

def primitiveAnalyticZeroDatum : AnalyticZeroDatum := {
  functionType := "entire",
  zeroLocus := Set.univ,
  analyticDominanceRegion := Set.univ,
  zeroOrder := 0
}

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end ZerosPolynomialsRationalFunctionsAnalyticCanonicalLaneLean
end HautevilleHouse