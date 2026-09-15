// Profile: SISRMEGeneralConsultation
// Covers MISAU.G "General Consultation", "Request Treatment", "Disease
// Screening" and "Discharge"/"Transfer Patient" (a generic/default
// consultation-through-discharge workflow applicable across specialties).
// Several sections duplicate concepts already modeled for other MISAU
// modules; those extensions/value sets are reused directly:
//   - Main Complaint / Current Medical History -> Encounter.reasonCode.text
//     and SISRMEMedicalHistorySummary (from SISRMEVisitSummary)
//   - Psychomotor Development -> SISRMEPsychomotorDevelopment (from MISAU.F)
//   - Menstrual History -> SISRMEMenstrualAndPregnancyHistory (from MISAU.F)
//   - Systems Review -> SISRMEReviewOfSystems (from MISAU.D)
//   - Pulse Assessment (multi-site) -> SISRMEPulseAssessment (from MISAU.D)
// Vital signs, anthropometrics and GCS are recorded as SISRMEMCHVitalSign
// Observations referencing this Encounter.

Profile: SISRMEGeneralConsultation
Parent: Encounter
Id: sisrme-general-consultation
Title: "SIS-RME General Consultation"
Description: "A general outpatient/inpatient consultation, from initial assessment through discharge/transfer, per SIS-RME Data Dictionary module G (General Module)."

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS
* reasonCode 0..1 MS
* reasonCode.text 0..1 MS
* reasonCode.text ^short = "Main Complaint (DE51)"

* extension contains
    SISRMEMedicalHistorySummary named currentMedicalHistory 0..1 MS and
    SISRMEPsychomotorDevelopment named psychomotorDevelopment 0..1 MS and
    SISRMEChronicDiseaseAssessment named chronicDiseaseAssessment 0..1 MS and
    SISRMEAllergyAssessmentGeneral named allergyAssessment 0..1 MS and
    SISRMEFamilyDietaryPsychosocialHistory named familyDietaryPsychosocialHistory 0..1 MS and
    SISRMEPediatricPersonalHistoryGeneral named pediatricPersonalHistory 0..1 MS and
    SISRMEMenstrualAndPregnancyHistory named menstrualHistory 0..1 MS and
    SISRMECurrentPregnancyStatus named currentPregnancyStatus 0..1 MS and
    SISRMEVaccinationRecordEntry named vaccinationRecord 0..* MS and
    SISRMEReviewOfSystems named reviewOfSystems 0..1 MS and
    SISRMENutritionalClassification named nutritionalClassification 0..1 MS and
    SISRMEPulseAssessment named pulseAssessment 0..* MS and
    SISRMERegionalPhysicalExamAdult named regionalPhysicalExamAdult 0..1 MS and
    SISRMERegionalPhysicalExamPediatricGeneral named regionalPhysicalExamPediatric 0..1 MS and
    SISRMEPainAssessmentGeneral named painAssessment 0..1 MS and
    SISRMENeurologicalExaminationAdult named neurologicalExamAdult 0..1 MS and
    SISRMENeurologicalExaminationPediatric named neurologicalExamPediatric 0..1 MS and
    SISRMEMedicalReassessment named medicalReassessment 0..1 MS and
    SISRMEClinicalEvolutionExt named clinicalEvolution 0..1 MS and
    SISRMEGeneralDiseaseScreeningFlags named diseaseScreeningFlags 0..1 MS and
    SISRMEMedicationSideEffect named medicationSideEffect 0..1 MS and
    SISRMEDetailedDiseaseScreeningPanel named diseaseScreeningPanel 0..1 MS and
    SISRMELabTestRequestGeneral named labTestRequest 0..* MS and
    SISRMELabResultGeneral named labResult 0..* MS and
    SISRMEImagingRequestAndResult named imagingRequestAndResult 0..1 MS and
    SISRMERapidTestResultPanel named rapidTestResult 0..1 MS and
    SISRMETreatmentRequestEntry named treatmentRequest 0..* MS and
    SISRMEDischargeSummary named dischargeSummary 0..1 MS and
    SISRMEPatientTransferRecord named patientTransfer 0..* MS

* extension[currentMedicalHistory] ^short = "Current Medical History (DE52)"
* extension[psychomotorDevelopment] ^short = "Psychomotor Development (DE53)"
* extension[chronicDiseaseAssessment] ^short = "Chronic Disease (DE54-57)"
* extension[allergyAssessment] ^short = "Allergies (DE58-66)"
* extension[familyDietaryPsychosocialHistory] ^short = "Family, Dietary, and Psychosocial History (DE67-84)"
* extension[pediatricPersonalHistory] ^short = "Personal History Pediatrics/Neonatology (DE85-103)"
* extension[menstrualHistory] ^short = "Menstrual History (DE104-112)"
* extension[currentPregnancyStatus] ^short = "Current pregnancy/breastfeeding status (DE113-115)"
* extension[vaccinationRecord] ^short = "Vaccination (DE116-119)"
* extension[reviewOfSystems] ^short = "Systems Review (DE120-128)"
* extension[nutritionalClassification] ^short = "Nutritional Assessment classifications (DE140-147)"
* extension[pulseAssessment] ^short = "Pulse Assessment, multi-site (DE155-164)"
* extension[regionalPhysicalExamAdult] ^short = "Regional Physical Examination - Adult (DE165-182)"
* extension[regionalPhysicalExamPediatric] ^short = "Regional Physical Examination - Pediatric (DE184-192)"
* extension[painAssessment] ^short = "Type of Pain, Pain Scale, Pain Intensity (DE194-199)"
* extension[neurologicalExamAdult] ^short = "Neurological Examination (DE200, DE202-223)"
* extension[neurologicalExamPediatric] ^short = "Neurological Examination - Pediatric (DE224-229)"
* extension[medicalReassessment] ^short = "Medical Reassessment (DE230-231)"
* extension[clinicalEvolution] ^short = "Clinical Evolution (DE232)"
* extension[diseaseScreeningFlags] ^short = "Disease Screening: serological status, TB, malaria (DE236-242)"
* extension[medicationSideEffect] ^short = "Side Effect - Medication (DE244-246)"
* extension[diseaseScreeningPanel] ^short = "Disease Screening: TB/STI/CACUM/Diabetes/Hypertension/HIV (DE289-324)"
* extension[labTestRequest] ^short = "Additional Tests Requisition: Laboratory test request (DE248-263)"
* extension[labResult] ^short = "Previously registered lab results (DE261-264)"
* extension[imagingRequestAndResult] ^short = "Imaging (DE265-273)"
* extension[rapidTestResult] ^short = "Rapid Tests (DE274-281)"
* extension[treatmentRequest] ^short = "Request Treatment (DE288-297 in the Request Treatment section)"
* extension[dischargeSummary] ^short = "Discharge (DE288-323 in the Discharge section)"
* extension[patientTransfer] ^short = "Transfer Patient (DE325-357)"

Instance: GeneralConsultationExample
InstanceOf: SISRMEGeneralConsultation
Title: "Example: SIS-RME General Consultation"
Description: "An example general outpatient consultation for the example patient, with disease screening and a laboratory test request."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* reasonCode.text = "Headache and dizziness"
* extension[currentMedicalHistory].valueString = "Symptoms started this morning after skipping breakfast."
* extension[chronicDiseaseAssessment].extension[present].valueBoolean = false
* extension[allergyAssessment].extension[present].valueBoolean = false
* extension[reviewOfSystems].extension[general].valueString = "No fever, no weight loss"
* extension[diseaseScreeningFlags].extension[testedForMalaria].valueBoolean = true
* extension[medicationSideEffect].extension[present].valueBoolean = false
* extension[labTestRequest][0].extension[priority].valueCodeableConcept = SISRMELabTestPriority#normal "Normal"
* extension[labTestRequest][0].extension[testName].valueString = "Blood glucose"
* extension[rapidTestResult].extension[malaria].valueCodeableConcept = SISRMERapidTestResult#negative "Negative"
* extension[clinicalEvolution].valueCodeableConcept = SISRMEClinicalEvolution#stable "Stable"
