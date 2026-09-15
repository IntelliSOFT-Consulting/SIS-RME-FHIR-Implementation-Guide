// Profile: SISRMEPrenatalConsultation
// Covers MISAU.D "PRENATAL CONSULTATION" (Registration/Admission,
// Obstetric History, Obstetric Examination, Laboratory Requests,
// Prophylaxis & treatment, Prevention, Allergy, Vaccination). Vital signs
// and anthropometrics are recorded as SISRMEMCHVitalSign Observations
// referencing this Encounter. "Banner" fields (DE119-123), which simply
// redisplay data already captured elsewhere on the form, are not modeled.

Profile: SISRMEPrenatalConsultation
Parent: Encounter
Id: sisrme-prenatal-consultation
Title: "SIS-RME Prenatal Consultation"
Description: "A prenatal (CPN) consultation visit, per SIS-RME Data Dictionary module D (MCH Module)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS
* period 0..1 MS
* period ^short = "Consultation date (DE6); Start date (DE5)"

* extension contains
    SISRMEPregnancyRegistration named pregnancyRegistration 0..1 MS and
    SISRMEPreviousPregnancyHistory named previousPregnancyHistory 0..1 MS and
    SISRMEObstetricSummary named obstetricSummary 0..1 MS and
    SISRMEPrenatalRiskFlagPresent named riskFlag 0..* MS and
    SISRMEObstetricExamination named obstetricExamination 0..1 MS and
    SISRMEPrenatalLabRequest named labRequest 0..* MS and
    SISRMEPrenatalLabResult named labResult 0..1 MS and
    SISRMEPrenatalProphylaxisPrescribed named prophylaxisPrescribed 0..* MS and
    SISRMEPreventionMeasures named preventionMeasures 0..1 MS and
    SISRMEPrenatalAllergy named allergy 0..* MS and
    SISRMEPrenatalVaccination named vaccination 0..* MS

* extension[pregnancyRegistration] ^short = "Registration/Admission (DE3-20)"
* extension[previousPregnancyHistory] ^short = "Obstetric History: previous pregnancy (DE23-38, DE40)"
* extension[obstetricSummary] ^short = "Obstetric History: GPACE summary (DE41-49)"
* extension[riskFlag] ^short = "Obstetric History: risk screening (DE50-57)"
* extension[obstetricExamination] ^short = "Obstetric Examination (DE68-87)"
* extension[labRequest] ^short = "Laboratory Requests (DE88-96)"
* extension[labResult] ^short = "Rapid HIV Test Result, Partner HIV Test Result (DE97-99)"
* extension[prophylaxisPrescribed] ^short = "Prophylaxis & treatment (DE100-108)"
* extension[preventionMeasures] ^short = "Prevention: mosquito net (DE109-110)"
* extension[allergy] ^short = "Allergy (DE111-114)"
* extension[vaccination] ^short = "Vaccination: VAT, TIP (DE115-118)"

Instance: PrenatalConsultationExample
InstanceOf: SISRMEPrenatalConsultation
Title: "Example: SIS-RME Prenatal Consultation"
Description: "An example routine prenatal follow-up visit for the example patient at 28 weeks gestation."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* period.start = "2026-06-01T09:00:00+02:00"
* extension[pregnancyRegistration].extension[lmp].valueDate = "2025-11-16"
* extension[pregnancyRegistration].extension[gestationalAgeWeeks].valueInteger = 28
* extension[pregnancyRegistration].extension[edd].valueDate = "2026-08-23"
* extension[pregnancyRegistration].extension[firstborn].valueBoolean = false
* extension[pregnancyRegistration].extension[partnerPresent].valueBoolean = true
* extension[obstetricSummary].extension[gravidity].valueInteger = 2
* extension[obstetricSummary].extension[parity].valueInteger = 1
* extension[obstetricSummary].extension[liveBirths].valueInteger = 1
* extension[obstetricSummary].extension[currentlyAlive].valueInteger = 1
* extension[obstetricExamination].extension[evaluationDate].valueDate = "2026-06-01"
* extension[obstetricExamination].extension[gestationalAgeAtExamWeeks].valueInteger = 28
* extension[obstetricExamination].extension[fetalMovementsPerceived].valueBoolean = true
* extension[obstetricExamination].extension[fetalPresentation].valueCodeableConcept = SISRMEFetalPresentation#cephalic "Cephalic"
* extension[obstetricExamination].extension[oedemaPresent].valueBoolean = false
* extension[labRequest][0].valueCodeableConcept = SISRMEPrenatalLabTest#haemoglobin "Haemoglobin"
* extension[labRequest][1].valueCodeableConcept = SISRMEPrenatalLabTest#rapid-hiv-test "Rapid HIV Test"
* extension[labResult].extension[rapidHIVResult].valueCodeableConcept = SISRMEIndexContactHIVStatus#hiv-negative "HIV Negative"
* extension[prophylaxisPrescribed][0].valueCodeableConcept = SISRMEPrenatalProphylaxis#ferrous-folic-acid "Ferrous Salt + Folic Acid"
* extension[prophylaxisPrescribed][1].valueCodeableConcept = SISRMEPrenatalProphylaxis#mebendazole "Mebendazole"
* extension[preventionMeasures].extension[mosquitoNetReceived].valueBoolean = true
* extension[preventionMeasures].extension[sleptUnderNetPreviousNight].valueBoolean = true
* extension[vaccination][0].extension[vaccine].valueCodeableConcept = SISRMEPrenatalVaccine#tetanus-toxoid "Tetanus Toxoid (VAT)"
* extension[vaccination][0].extension[doseNumber].valueCodeableConcept = SISRMEVaccineDoseNumber#"2" "2nd dose"
* extension[vaccination][0].extension[doseDate].valueDate = "2026-06-01"
