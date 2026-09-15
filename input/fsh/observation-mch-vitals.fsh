// Profile: SISRMEMCHVitalSign
// Covers the numeric vital-sign, anthropometric and obstetric/GCS
// measurements of MISAU.D (MCH Module), across Prenatal, Postnatal
// (including newborn) and Paediatric consultations. Modeled as
// Observation, reusing well-established LOINC codes, consistent with
// SISRMEHIVVitalSign. One instance is created per measurement.

Profile: SISRMEMCHVitalSign
Parent: Observation
Id: sisrme-mch-vital-sign
Title: "SIS-RME MCH Vital Sign / Measurement"
Description: "A single vital sign, anthropometric, obstetric or Glasgow Coma Scale measurement recorded during a Prenatal, Postnatal or Paediatric consultation."
* ^experimental = true

* status MS
* category 0..* MS
* category ^short = "vital-signs for true vital signs (required by the matching core FHIR vital-signs profiles for weight/height/BMI/temperature/heart rate/respiratory rate/blood pressure/SpO2); exam for other physical/obstetric measurements"
* code 1..1 MS
* code from SISRMEMCHVitalSignCodeVS (extensible)
* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* encounter 0..1 MS
* encounter only Reference(SISRMEPrenatalConsultation or SISRMEPostnatalConsultation or SISRMEPediatricConsultation)
* effective[x] 0..1 MS
* effective[x] only dateTime
* value[x] 0..1 MS
* value[x] only Quantity or CodeableConcept or string

ValueSet: SISRMEMCHVitalSignCodeVS
Id: sisrme-mch-vital-sign-code-vs
Title: "SIS-RME MCH Vital Sign / Measurement Code"
Description: "Codes for SISRMEMCHVitalSign.code, reusing well-established LOINC codes for standard vital signs, anthropometrics, obstetric measurements and Glasgow Coma Scale components."
* ^experimental = true
* $LOINC#8480-6 "Systolic blood pressure"
* $LOINC#8462-4 "Diastolic blood pressure"
* $LOINC#8310-5 "Body temperature"
* $LOINC#8867-4 "Heart rate"
* $LOINC#9279-1 "Respiratory rate"
* $LOINC#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* $LOINC#29463-7 "Body weight"
* $LOINC#8302-2 "Body height"
* $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* $LOINC#9843-4 "Head Occipital-frontal circumference"
* $LOINC#11881-0 "Uterus Fundal height Tape measure"
* $LOINC#55283-6 "Fetal Heart rate"
* $LOINC#67847-4 "Glasgow coma score total"
* $LOINC#9267-6 "Glasgow coma score eye opening"
* $LOINC#9270-0 "Glasgow coma score verbal"
* $LOINC#9268-4 "Glasgow coma score motor"
* SISRMEMCHVitalSignLocalCode#muac "Mid-upper arm circumference (MUAC)"
* SISRMEMCHVitalSignLocalCode#length "Body length (recumbent, infant)"

CodeSystem: SISRMEMCHVitalSignLocalCode
Id: sisrme-mch-vital-sign-local-code
Title: "SIS-RME MCH Vital Sign / Measurement (local codes)"
Description: "Local codes for MCH measurements with no confirmed LOINC equivalent identified within this IG's terminology-verification process. See SISRMEMCHVitalSignCodeVS."
* ^experimental = true
* ^caseSensitive = true
* #muac "Mid-upper arm circumference (MUAC)"
* #length "Body length (recumbent, infant)"

Instance: MCHVitalSignFundalHeightExample
InstanceOf: SISRMEMCHVitalSign
Title: "Example: Prenatal Fundal Height"
Description: "An example fundal height measurement recorded during a prenatal consultation."
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $LOINC#11881-0 "Uterus Fundal height Tape measure"
* subject = Reference(PatientRegistrationExample)
* performer[0].display = "Dr. Ines Sitoe"
* effectiveDateTime = "2026-06-01T09:00:00+02:00"
* valueQuantity.value = 28
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

Instance: MCHVitalSignFetalHeartRateExample
InstanceOf: SISRMEMCHVitalSign
Title: "Example: Prenatal Fetal Heart Rate"
Description: "An example fetal heart rate measurement recorded during a prenatal consultation."
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $LOINC#55283-6 "Fetal Heart rate"
* subject = Reference(PatientRegistrationExample)
* performer[0].display = "Dr. Ines Sitoe"
* effectiveDateTime = "2026-06-01T09:00:00+02:00"
* valueQuantity.value = 142
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = $UCUM
* valueQuantity.code = #"/min"

Instance: MCHVitalSignGCSTotalExample
InstanceOf: SISRMEMCHVitalSign
Title: "Example: Paediatric GCS Total Score"
Description: "An example Glasgow Coma Scale total score recorded during a paediatric consultation."
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $LOINC#67847-4 "Glasgow coma score total"
* subject = Reference(PatientRegistrationExample)
* performer[0].display = "Dr. Ines Sitoe"
* effectiveDateTime = "2026-06-20T10:00:00+02:00"
* valueQuantity.value = 15
* valueQuantity.unit = "score"
* valueQuantity.system = $UCUM
* valueQuantity.code = #"{score}"
