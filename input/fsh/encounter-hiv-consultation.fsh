// Profile: SISRMEHIVConsultation
// Covers MISAU.C (HIV Module): ART Consultation, Advanced HIV Disease,
// APSS & PP (adherence and psychosocial support), and Alternative & Line
// Treatment. Modeled as an Encounter, consistent with SISRMEVisitSummary,
// reusing that profile's generic clinical-narrative extensions
// (diagnosesSummary, medicalHistorySummary, objectiveExamSummary) for the
// corresponding HIV-specific fields, and adding HIV-specific extensions
// for testing, ART history/initiation, regimen changes, screening,
// adherence and psychosocial/disclosure assessment. Numeric measurements
// (vitals, CD4, viral load) are recorded as separate SISRMEHIVVitalSign
// Observations referencing this Encounter.

Profile: SISRMEHIVConsultation
Parent: Encounter
Id: sisrme-hiv-consultation
Title: "SIS-RME HIV Consultation"
Description: "An HIV/ART consultation visit, per SIS-RME Data Dictionary module C (HIV Module)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS
* reasonCode 0..1 MS
* reasonCode.text 0..1 MS
* reasonCode.text ^short = "Chief Complaint (DE33)"

* extension contains
    SISRMEHIVTesting named hivTesting 0..1 MS and
    SISRMEARTHistory named artHistory 0..1 MS and
    SISRMETPTProphylaxis named tptProphylaxis 0..1 MS and
    SISRMEARTInitiation named artInitiation 0..1 MS and
    SISRMERegimenChange named regimenChange 0..* MS and
    SISRMEMedicalHistorySummary named historyOfPresentIllness 0..1 MS and
    SISRMEHIVAllergySummary named allergySummary 0..1 MS and
    SISRMEScreeningPanel named screeningPanel 0..1 MS and
    SISRMEChronicConditionsSummary named chronicConditionsSummary 0..1 MS and
    SISRMEMenstrualHistorySummary named menstrualHistorySummary 0..1 MS and
    SISRMEFamilyPlanningStatus named familyPlanningStatus 0..1 MS and
    SISRMEObjectiveExamSummary named examFindingsSummary 0..1 MS and
    SISRMEDiagnosesSummary named diagnosesSummary 0..1 MS and
    SISRMEWHOStageCurrent named whoStageCurrent 0..1 MS and
    SISRMEAdherenceToART named adherenceToART 0..1 MS and
    SISRMESideEffectsSummary named sideEffectsSummary 0..1 MS and
    SISRMEDifferentiatedServiceDelivery named differentiatedServiceDelivery 0..1 MS and
    SISRMEAdvancedHIVDisease named advancedHIVDisease 0..1 MS and
    SISRMEAdherenceCounseling named adherenceCounseling 0..1 MS and
    SISRMEDisclosureAssessment named disclosureAssessment 0..1 MS and
    SISRMEKeyPopulation named keyPopulation 0..1 MS and
    SISRMEPreventionPackage named preventionPackage 0..1 MS and
    SISRMESerostatusDisclosure named serostatusDisclosure 0..1 MS and
    SISRMEAdherenceSupport named adherenceSupport 0..1 MS and
    SISRMESupportGroupParticipation named supportGroupParticipation 0..* MS and
    SISRMETreatmentFailureReview named treatmentFailureReview 0..1 MS

* extension[hivTesting] ^short = "ART Consultation: HIV Testing and Diagnosis (DE2-10)"
* extension[artHistory] ^short = "Prior ART History (DE12-14)"
* extension[tptProphylaxis] ^short = "Last TPT Prophylaxis (DE23-25)"
* extension[artInitiation] ^short = "HIV Care & ART Initiation (DE26-37)"
* extension[regimenChange] ^short = "Alternative & Line Treatment: regimen changes (1st line alternative, 2nd line, 3rd line)"
* extension[historyOfPresentIllness] ^short = "History of Present Illness (DE34)"
* extension[allergySummary] ^short = "Allergy Registry (DE35)"
* extension[screeningPanel] ^short = "STI/Cervical Cancer/Diabetes/TB/Hypertension Screening (DE36-40)"
* extension[chronicConditionsSummary] ^short = "Medical Conditions / Chronic Diseases (DE41)"
* extension[menstrualHistorySummary] ^short = "Menstrual History (DE42)"
* extension[familyPlanningStatus] ^short = "Family Planning Method (DE43-44)"
* extension[examFindingsSummary] ^short = "Regional Physical Examination, Neurological Examination (DE53-54)"
* extension[diagnosesSummary] ^short = "Diagnoses (DE55)"
* extension[whoStageCurrent] ^short = "WHO HIV Stage, Current (DE56)"
* extension[adherenceToART] ^short = "Adherence to ART, clinical impression (DE57)"
* extension[sideEffectsSummary] ^short = "Side Effects (DE58)"
* extension[differentiatedServiceDelivery] ^short = "MDS Eligibility, State, Model (DE59-61)"
* extension[advancedHIVDisease] ^short = "Advanced HIV Disease (DAH): Kaposi's Sarcoma chemotherapy (DE62-67)"
* extension[adherenceCounseling] ^short = "APSS & PP: core adherence/psychosocial counseling (DE67-74)"
* extension[disclosureAssessment] ^short = "APSS & PP: diagnostic disclosure assessment (DE75-87)"
* extension[keyPopulation] ^short = "Key Population (DE88-90)"
* extension[preventionPackage] ^short = "Prevention with Positives package PP1-7 (DE91-97)"
* extension[serostatusDisclosure] ^short = "Serostatus disclosure to others (DE98-100)"
* extension[adherenceSupport] ^short = "ARV Adherence Support (DE101-112)"
* extension[supportGroupParticipation] ^short = "Support Group Participation (DE113-119)"
* extension[treatmentFailureReview] ^short = "Alternative & Line Treatment: therapeutic failure review (DE119-124)"

Instance: HIVConsultationExample
InstanceOf: SISRMEHIVConsultation
Title: "Example: SIS-RME HIV Consultation"
Description: "An example ART follow-up consultation for the example patient: virally suppressed, good adherence, screened, and referred to a mother-to-mother support group."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* reasonCode.text = "Routine ART follow-up"
* extension[artHistory].extension[priorARVUse].valueCodeableConcept = $v2-0532#Y "Yes"
* extension[artHistory].extension[everAttendedARTClinic].valueCodeableConcept = $v2-0532#Y "Yes"
* extension[artInitiation].extension[artStartDate].valueDate = "2023-04-02"
* extension[artInitiation].extension[initialRegimen].valueString = "TDF/3TC/DTG"
* extension[artInitiation].extension[whoStageAtInitiation].valueCodeableConcept = SISRMEWHOClinicalStage#stage-1 "WHO Clinical Stage 1"
* extension[artInitiation].extension[pregnantAtStart].valueCodeableConcept = $v2-0532#N "No"
* extension[artInitiation].extension[breastfeedingAtStart].valueCodeableConcept = $v2-0532#N "No"
* extension[screeningPanel].extension[sti].valueCodeableConcept = SISRMEScreeningResult#negative "Negative/Not suspected"
* extension[screeningPanel].extension[tb].valueCodeableConcept = SISRMEScreeningResult#negative "Negative/Not suspected"
* extension[screeningPanel].extension[hypertension].valueCodeableConcept = SISRMEScreeningResult#not-done "Not done"
* extension[diagnosesSummary].valueString = "HIV infection, on ART, virally suppressed"
* extension[whoStageCurrent].valueCodeableConcept = SISRMEWHOClinicalStage#stage-1 "WHO Clinical Stage 1"
* extension[adherenceToART].valueCodeableConcept = SISRMEAdherenceClassification#good "Good"
* extension[differentiatedServiceDelivery].extension[eligible].valueCodeableConcept = $v2-0532#Y "Yes"
* extension[differentiatedServiceDelivery].extension[state].valueCodeableConcept = SISRMEDSDState#enrolled "Enrolled"
* extension[adherenceSupport].extension[administrator].valueCodeableConcept = SISRMEARVAdministrator#self "Self-administered"
* extension[adherenceSupport].extension[dosesForgottenLast2Weeks].valueInteger = 0
* extension[adherenceSupport].extension[classification].valueCodeableConcept = SISRMEAdherenceClassification#good "Good"
* extension[adherenceSupport].extension[adherencePercentage].valueDecimal = 98.5
* extension[supportGroupParticipation][0].extension[groupType].valueCodeableConcept = SISRMESupportGroupType#mother-to-mother "Mother-to-Mother Support Group (MPM)"
