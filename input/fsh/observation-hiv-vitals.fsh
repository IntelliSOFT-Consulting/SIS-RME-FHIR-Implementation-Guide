// Profile: SISRMEHIVVitalSign
// Covers the numeric/anthropometric and immunologic/virologic measurements
// of MISAU.C (HIV Module): Vital Signs, Weight, Height, BMI, MUAC,
// Nutritional Assessment, General State, Level of Consciousness (DE45-52)
// and CD4/Viral Load monitoring (DE15-22). Modeled as Observation, reusing
// LOINC codes where a well-established one exists, since these are
// numeric/coded measurements rather than administrative or checklist data.

Profile: SISRMEHIVVitalSign
Parent: Observation
Id: sisrme-hiv-vital-sign
Title: "SIS-RME HIV Consultation Vital Sign / Lab Measurement"
Description: "A single vital sign, anthropometric, immunologic or virologic measurement recorded during an HIV consultation. One instance is created per measurement (e.g. one for Weight, one for CD4 count)."

* status MS
* code 1..1 MS
* code from SISRMEHIVVitalSignCodeVS (extensible)
* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* encounter 0..1 MS
* encounter only Reference(SISRMEHIVConsultation)
* effective[x] 0..1 MS
* effective[x] only dateTime
* value[x] 0..1 MS
* value[x] only Quantity or CodeableConcept or string

ValueSet: SISRMEHIVVitalSignCodeVS
Id: sisrme-hiv-vital-sign-code-vs
Title: "SIS-RME HIV Consultation Vital Sign / Lab Measurement Code"
Description: "Codes for SISRMEHIVVitalSign.code. Weight, Height, BMI and HIV viral load reuse well-established LOINC codes; CD4 absolute count reuses the LOINC code for the T4 helper (CD4+) cell count. CD4 percentage, CD4 semi-quantitative, MUAC, nutritional assessment, general state and level of consciousness are local codes: no single authoritative LOINC code could be confirmed for these within this IG's terminology-verification process, and implementers integrating with a specific lab system should map to that system's exact codes."
* $LOINC#29463-7 "Body weight" // MISAU.C.DE46
* $LOINC#8302-2 "Body height" // MISAU.C.DE47
* $LOINC#39156-5 "Body mass index (BMI) [Ratio]" // MISAU.C.DE48
* $LOINC#24467-3 "CD3+CD4+ (T4 helper) cells [#/volume] in Blood" // MISAU.C.DE15 (Last CD4 Count - Absolute)
* $LOINC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection" // MISAU.C.DE19 (Last Viral Load - Absolute)
* SISRMEHIVVitalSignLocalCode#cd4-percentage "CD4 percentage" // MISAU.C.DE16
* SISRMEHIVVitalSignLocalCode#cd4-semi-quantitative "CD4, semi-quantitative" // MISAU.C.DE17
* SISRMEHIVVitalSignLocalCode#viral-load-qualitative "Viral load, qualitative" // MISAU.C.DE20-21
* SISRMEHIVVitalSignLocalCode#muac "Mid-upper arm circumference (MUAC)" // MISAU.C.DE49
* SISRMEHIVVitalSignLocalCode#nutritional-assessment "Nutritional assessment" // MISAU.C.DE50
* SISRMEHIVVitalSignLocalCode#general-state "General state" // MISAU.C.DE51
* SISRMEHIVVitalSignLocalCode#level-of-consciousness "Level of consciousness" // MISAU.C.DE52

CodeSystem: SISRMEHIVVitalSignLocalCode
Id: sisrme-hiv-vital-sign-local-code
Title: "SIS-RME HIV Consultation Vital Sign / Lab Measurement (local codes)"
Description: "Local codes for HIV consultation measurements with no confirmed LOINC equivalent (MISAU.C.DE16-17, DE20-21, DE49-52). See SISRMEHIVVitalSignCodeVS."
* ^caseSensitive = true
* #cd4-percentage "CD4 percentage"
* #cd4-semi-quantitative "CD4, semi-quantitative"
* #viral-load-qualitative "Viral load, qualitative (e.g. Undetectable, or Less Than a specified threshold)"
* #muac "Mid-upper arm circumference (MUAC)"
* #nutritional-assessment "Nutritional assessment"
* #general-state "General state"
* #level-of-consciousness "Level of consciousness"

Instance: HIVVitalSignWeightExample
InstanceOf: SISRMEHIVVitalSign
Title: "Example: HIV Consultation Weight"
Usage: #example
* status = #final
* code = $LOINC#29463-7 "Body weight"
* subject = Reference(PatientRegistrationExample)
* encounter = Reference(HIVConsultationExample)
* effectiveDateTime = "2026-06-15T09:00:00+02:00"
* valueQuantity.value = 58.4
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg

Instance: HIVVitalSignCD4Example
InstanceOf: SISRMEHIVVitalSign
Title: "Example: HIV Consultation CD4 Count"
Usage: #example
* status = #final
* code = $LOINC#24467-3 "CD3+CD4+ (T4 helper) cells [#/volume] in Blood"
* subject = Reference(PatientRegistrationExample)
* encounter = Reference(HIVConsultationExample)
* effectiveDateTime = "2026-06-10T08:00:00+02:00"
* valueQuantity.value = 512
* valueQuantity.unit = "cells/uL"
* valueQuantity.system = $UCUM
* valueQuantity.code = #"/uL"

Instance: HIVVitalSignViralLoadExample
InstanceOf: SISRMEHIVVitalSign
Title: "Example: HIV Consultation Viral Load"
Usage: #example
* status = #final
* code = $LOINC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"
* subject = Reference(PatientRegistrationExample)
* encounter = Reference(HIVConsultationExample)
* effectiveDateTime = "2026-06-01T08:00:00+02:00"
* valueQuantity.value = 40
* valueQuantity.unit = "copies/mL"
* valueQuantity.system = $UCUM
* valueQuantity.code = #"{copies}/mL"
