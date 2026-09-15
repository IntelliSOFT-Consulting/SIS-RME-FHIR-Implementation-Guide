// Profile: SISRMETBConsultation
// Covers the per-visit clinical content of MISAU.F (TB Module): type of
// consultation, disease screening, complaint/history, menstrual and
// pregnancy history, physical examination, laboratory/imaging requests
// and results, TB counseling (adherence risk factors, mental health,
// social support, treatment interruption tracing) and the follow-up
// adherence assessment. Modeled as an Encounter, reusing SISRMEVisitSummary
// extensions where the concept is identical (History of Present Illness).
// The longitudinal TB case itself (risk groups, regimen, outcomes) is
// modeled separately as SISRMETBCase (Condition).

Profile: SISRMETBConsultation
Parent: Encounter
Id: sisrme-tb-consultation
Title: "SIS-RME TB Consultation"
Description: "A TB consultation visit (initial or follow-up), per SIS-RME Data Dictionary module F (TB Module)."

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS
* reasonCode 0..1 MS
* reasonCode.text 0..1 MS
* reasonCode.text ^short = "Main Complaint (DE.110)"

* extension contains
    SISRMETBConsultationTypeExt named consultationType 0..1 MS and
    SISRMETBDiseaseScreening named diseaseScreening 0..1 MS and
    SISRMEMedicalHistorySummary named currentMedicalHistory 0..1 MS and
    SISRMEPsychomotorDevelopment named psychomotorDevelopment 0..1 MS and
    SISRMEMenstrualAndPregnancyHistory named menstrualAndPregnancyHistory 0..1 MS and
    SISRMETBPhysicalExamFindings named physicalExamFindings 0..1 MS and
    SISRMETBLabTestRequest named labTestRequest 0..* MS and
    SISRMETBLabAndImagingResultSummary named labAndImagingResultSummary 0..1 MS and
    SISRMETBAdherenceRiskFactorPresent named adherenceRiskFactor 0..* MS and
    SISRMETBMentalHealthAssessment named mentalHealthAssessment 0..1 MS and
    SISRMETBSocialSupportProvided named socialSupport 0..* MS and
    SISRMETBTreatmentInterruption named treatmentInterruption 0..1 MS and
    SISRMETBAdherenceAssessmentExt named followUpAdherenceAssessment 0..1 MS

* extension[consultationType] ^short = "Type of consultation: Initial/Follow up (DE.1-3)"
* extension[diseaseScreening] ^short = "Disease screening: TB exposure and symptoms (DE.4-15)"
* extension[currentMedicalHistory] ^short = "Current medical history (DE.111)"
* extension[psychomotorDevelopment] ^short = "Psychomotor Development (DE.112)"
* extension[menstrualAndPregnancyHistory] ^short = "Menstrual History and Pregnancy/Lactation History (DE.113-122)"
* extension[physicalExamFindings] ^short = "Physical examination (DE.123-126); see the General module for a full exam"
* extension[labTestRequest] ^short = "Request Laboratory Tests (DE.127-132)"
* extension[labAndImagingResultSummary] ^short = "Previously registered results, Laboratory Tests and Imaging (DE.133-150)"
* extension[adherenceRiskFactor] ^short = "TB Counseling: Adherence Risk Factors (DE.151-167)"
* extension[mentalHealthAssessment] ^short = "TB Counseling: Mental Health Screening, Suicide Risk, Intervention (DE.168-178)"
* extension[socialSupport] ^short = "TB Counseling: Social Support (DE.179-181)"
* extension[treatmentInterruption] ^short = "TB Counseling: Treatment Interruption tracing (DE.182-184)"
* extension[followUpAdherenceAssessment] ^short = "TB Follow-up Consultation: TB Adherence Assessment (DE.185-187)"

Instance: TBConsultationExample
InstanceOf: SISRMETBConsultation
Title: "Example: SIS-RME TB Consultation"
Description: "An example initial TB consultation for the example patient, following a positive symptom screen and a bacteriologically confirmed diagnosis."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* reasonCode.text = "Cough lasting more than 2 weeks"
* extension[consultationType].valueCodeableConcept = SISRMETBConsultationType#initial "Initial Consultation"
* extension[diseaseScreening].extension[exposedToTBLast2Years].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[diseaseScreening].extension[hasSymptoms].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[diseaseScreening].extension[symptom][0].valueCodeableConcept = SISRMETBSymptom#cough-2-weeks "Cough lasting more than 2 weeks"
* extension[diseaseScreening].extension[symptom][1].valueCodeableConcept = SISRMETBSymptom#night-sweats "Night Sweats"
* extension[diseaseScreening].extension[symptom][2].valueCodeableConcept = SISRMETBSymptom#weight-loss "Weight loss"
* extension[currentMedicalHistory].valueString = "Symptoms began approximately 3 weeks ago, progressively worsening."
* extension[labTestRequest][0].extension[priority].valueCodeableConcept = SISRMELabTestPriority#urgent "Urgent"
* extension[labTestRequest][0].extension[testName].valueString = "GeneXpert MTB/RIF"
* extension[labTestRequest][0].extension[examDate].valueDate = "2026-05-20"
* extension[labAndImagingResultSummary].extension[xpert].valueString = "MTB detected, rifampicin resistance not detected"
* extension[adherenceRiskFactor][0].valueCodeableConcept = SISRMETBAdherenceRiskFactor#lives-far-from-facility "Lives far from health facility"
* extension[mentalHealthAssessment].extension[screeningResult].valueCodeableConcept = SISRMETBMentalHealthScreening#no-mental-illness "No Mental Illness"
* extension[mentalHealthAssessment].extension[suicideRisk].valueCodeableConcept = $v2-0136#N "No"
* extension[mentalHealthAssessment].extension[adherenceCounselingProvided].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[socialSupport][0].valueCodeableConcept = SISRMETBSocialSupport#food-basket "Food Basket"
