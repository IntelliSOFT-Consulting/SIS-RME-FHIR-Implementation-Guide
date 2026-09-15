// Profile: SISRMEPediatricConsultation
// Covers MISAU.D "PEDIATRICS CONSULTATION" and its "GENERAL EXAMINATION"
// subsection: Chief Complaint & History of Present Illness, Past
// Pathological History, Psychosocial History, Personal Paediatric/Neonatal
// History, Menstrual History, Review of Systems, General Physical
// Examination (GCS, General State/Biotype, Anthropometric, Vital Signs,
// Pulse, Disease Screening, Regional Physical Examination, Abnormal
// Masses). Patient demographic fields (Name, Age, Sex, Race, Marital
// Status, Origin, Residence, DE182-190) duplicate data already captured
// on SISRMEPatient and are not re-modeled here. Chief Complaint and
// History of Present Illness reuse Encounter.reasonCode.text and the
// SISRMEMedicalHistorySummary extension (both already defined for
// SISRMEVisitSummary/SISRMEHIVConsultation). Menstrual history reuses
// SISRMEMenstrualAndPregnancyHistory (defined for MISAU.F, TB Module).
// GCS score, vital signs and anthropometrics are recorded as
// SISRMEMCHVitalSign Observations referencing this Encounter.

Profile: SISRMEPediatricConsultation
Parent: Encounter
Id: sisrme-pediatric-consultation
Title: "SIS-RME Paediatric Consultation"
Description: "A paediatric consultation visit, per SIS-RME Data Dictionary module D (MCH Module)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS
* reasonCode 0..1 MS
* reasonCode.text 0..1 MS
* reasonCode.text ^short = "Chief Complaint (DE191)"

* extension contains
    SISRMEMedicalHistorySummary named historyOfPresentIllness 0..1 MS and
    SISRMEPastPathologicalHistory named pastPathologicalHistory 0..1 MS and
    SISRMEPsychosocialHistory named psychosocialHistory 0..1 MS and
    SISRMEPersonalPaediatricNeonatalHistory named personalPaediatricHistory 0..1 MS and
    SISRMEMenstrualAndPregnancyHistory named menstrualHistory 0..1 MS and
    SISRMEReviewOfSystems named reviewOfSystems 0..1 MS and
    SISRMEPediatricDangerSignPresent named dangerSign 0..* MS and
    SISRMEGeneralStateAndBiotype named generalStateAndBiotype 0..1 MS and
    SISRMEPulseAssessment named pulseAssessment 0..* MS and
    SISRMEDiseaseScreeningPediatric named diseaseScreening 0..1 MS and
    SISRMERegionalPhysicalExam named regionalPhysicalExam 0..1 MS and
    SISRMEAbnormalMasses named abnormalMasses 0..1 MS

* extension[historyOfPresentIllness] ^short = "History of Present Illness (DE192)"
* extension[pastPathologicalHistory] ^short = "Past Pathological History (DE193-206)"
* extension[psychosocialHistory] ^short = "Psychosocial History (DE207-215)"
* extension[personalPaediatricHistory] ^short = "Personal Paediatric/Neonatal History, shown only for children < 2 years (DE216-221)"
* extension[menstrualHistory] ^short = "Menstrual History, shown only for female patients of menarchal age (DE222-231)"
* extension[reviewOfSystems] ^short = "Review of Systems (DE232-239)"
* extension[dangerSign] ^short = "General Examination: Warning/Danger Signs (DE241-246)"
* extension[generalStateAndBiotype] ^short = "General State & Biotype (DE266-274)"
* extension[pulseAssessment] ^short = "Pulse Assessment, multi-site (DE283-294)"
* extension[diseaseScreening] ^short = "Disease Screening: HIV, TB (DE295-296)"
* extension[regionalPhysicalExam] ^short = "Regional Physical Examination (DE297-305)"
* extension[abnormalMasses] ^short = "Abnormal Masses (DE306-309)"

Instance: PediatricConsultationExample
InstanceOf: SISRMEPediatricConsultation
Title: "Example: SIS-RME Paediatric Consultation"
Description: "An example well-child paediatric consultation for the example patient's child, with a normal general examination."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* reasonCode.text = "Fever for 2 days"
* extension[historyOfPresentIllness].valueString = "Fever began 2 days ago, no cough, feeding normally."
* extension[pastPathologicalHistory].extension[chronicDiseases].valueBoolean = false
* extension[pastPathologicalHistory].extension[medicationAllergies].valueBoolean = false
* extension[dangerSign][0].valueCodeableConcept = SISRMEPediatricDangerSign#lethargic "Lethargic"
* extension[generalStateAndBiotype].extension[generalState].valueCodeableConcept = SISRMEGeneralStateDegree#good "Good"
* extension[generalStateAndBiotype].extension[biotype].valueCodeableConcept = SISRMEBiotype#mesomorph "Mesomorph (muscular, athletic build)"
* extension[pulseAssessment][0].extension[site].valueCodeableConcept = SISRMEPulseSite#radial "Radial"
* extension[pulseAssessment][0].extension[rate].valueInteger = 110
* extension[pulseAssessment][0].extension[rhythm].valueCodeableConcept = SISRMEPulseRhythm#regular "Regular"
* extension[diseaseScreening].extension[hiv].valueCodeableConcept = SISRMEScreeningResult#not-done "Not done"
* extension[diseaseScreening].extension[tb].valueCodeableConcept = SISRMEScreeningResult#negative "Negative/Not suspected"
* extension[abnormalMasses].extension[present].valueBoolean = false
