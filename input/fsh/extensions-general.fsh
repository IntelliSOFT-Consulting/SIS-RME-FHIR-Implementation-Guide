// Extensions supporting SISRMEAppointment, SISRMEGeneralConsultation and
// SISRMEDiagnosisRecord, for MISAU.G (General Module) data elements with
// no matching core FHIR element. Where this module's sections duplicate a
// concept already modeled for another module (allergies, family/
// psychosocial/menstrual history, systems review, GCS, pulse assessment,
// biotype, TB symptom screening, family planning), the existing extension
// or value set is reused directly rather than re-defined - see comments
// on SISRMEGeneralConsultation in encounter-general-consultation.fsh.

// --- SISRMEAppointment (Appointment) extensions ---

Extension: SISRMETriagePriorityExt
Id: sisrme-triage-priority-ext
Title: "Triage Priority Level"
Description: "Triage priority level assigned at appointment scheduling/admission (MISAU.G.DE8-13)."
Context: Appointment
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETriagePriorityVS (required)

Extension: SISRMEExemptionReasonExt
Id: sisrme-exemption-reason-ext
Title: "Reason for Fee Exemption"
Description: "Reason(s) a patient is exempt from consultation fees (MISAU.G.DE25-35)."
Context: Appointment
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEExemptionReasonVS (required)

Extension: SISRMEDonorInformationRef
Id: sisrme-donor-information-ref
Title: "Donor Information (free text)"
Description: "Free-text donor information recorded at scheduling (MISAU.G.DE36-37)."
Context: Appointment
* extension contains
    details 0..1 MS and
    membershipCardNumber 0..1 MS
* extension[details].value[x] only string
* extension[membershipCardNumber].value[x] only string
* extension[membershipCardNumber] ^short = "AMM Membership Card Number (DE37)"

Extension: SISRMEAppointmentTransferOrigin
Id: sisrme-appointment-transfer-origin
Title: "Appointment Transfer Origin"
Description: "Origin health unit for a patient referred/transferred in for this appointment (MISAU.G.DE19-22)."
Context: Appointment
* extension contains
    province 0..1 MS and
    district 0..1 MS and
    healthUnit 0..1 MS and
    referenceGuideNumber 0..1 MS
* extension[province].value[x] only CodeableConcept
* extension[province].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[district].value[x] only CodeableConcept
* extension[district].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[healthUnit].value[x] only string
* extension[referenceGuideNumber].value[x] only string

Extension: SISRMEVisitStatusGeneral
Id: sisrme-visit-status-general
Title: "General Module Visit Status"
Description: "The patient's status within this scheduled visit (MISAU.G.DE39-40)."
Context: Appointment
* extension contains
    screeningStatus 0..1 MS and
    visitStatus 0..1 MS
* extension[screeningStatus].value[x] only string
* extension[visitStatus].value[x] only CodeableConcept
* extension[visitStatus].valueCodeableConcept from SISRMEGeneralVisitStatusVS (required)

Extension: SISRMEAppointmentRemoval
Id: sisrme-appointment-removal
Title: "Appointment Removal"
Description: "Cancellation/rescheduling of an appointment (MISAU.G.DE41-50)."
Context: Appointment
* extension contains
    reason 0..1 MS and
    cancellationReason 0..1 MS and
    rescheduleDate 0..1 MS and
    rescheduleReason 0..1 MS and
    changeOfDoctorName 0..1 MS
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept from SISRMEAppointmentRemovalReasonVS (required)
* extension[cancellationReason].value[x] only string
* extension[rescheduleDate].value[x] only date
* extension[rescheduleReason].value[x] only string
* extension[changeOfDoctorName].value[x] only string

Extension: SISRMEAdmissionDetails
Id: sisrme-admission-details
Title: "Admission Details"
Description: "Admission type and reason for admission (MISAU.G.DE18, DE23-24)."
Context: Appointment
* extension contains
    admissionType 0..1 MS and
    reasonForAdmission 0..1 MS and
    costInMetical 0..1 MS
* extension[admissionType].value[x] only string
* extension[reasonForAdmission].value[x] only string
* extension[costInMetical].value[x] only Quantity

// --- SISRMEGeneralConsultation (Encounter) extensions ---

Extension: SISRMEFamilyDietaryPsychosocialHistory
Id: sisrme-family-dietary-psychosocial-history
Title: "Family, Dietary, and Psychosocial History"
Description: "Free-text family, dietary and psychosocial history (MISAU.G.DE67-84)."
Context: Encounter
* extension contains
    foodHistory 0..1 MS and
    familyHistory 0..1 MS and
    housing 0..1 MS and
    householdSize 0..1 MS and
    waterAccess 0..1 MS and
    sewageAccess 0..1 MS and
    fathersOccupation 0..1 MS and
    fathersEducationLevel 0..1 MS and
    mothersOccupation 0..1 MS and
    mothersEducationLevel 0..1 MS and
    familyIncome 0..1 MS and
    alcoholHabits 0..1 MS and
    alcoholComments 0..1 MS and
    smokingHabits 0..1 MS and
    smokingComments 0..1 MS and
    previousTrips 0..1 MS and
    previousTripsComments 0..1 MS
* extension[foodHistory].value[x] only string
* extension[familyHistory].value[x] only string
* extension[housing].value[x] only string
* extension[householdSize].value[x] only string
* extension[waterAccess].value[x] only string
* extension[sewageAccess].value[x] only string
* extension[fathersOccupation].value[x] only string
* extension[fathersEducationLevel].value[x] only string
* extension[mothersOccupation].value[x] only string
* extension[mothersEducationLevel].value[x] only string
* extension[familyIncome].value[x] only string
* extension[alcoholHabits].value[x] only string
* extension[alcoholComments].value[x] only string
* extension[smokingHabits].value[x] only string
* extension[smokingComments].value[x] only string
* extension[previousTrips].value[x] only string
* extension[previousTripsComments].value[x] only string

Extension: SISRMEChronicDiseaseAssessment
Id: sisrme-chronic-disease-assessment
Title: "Chronic Disease Assessment"
Description: "Chronic disease history (MISAU.G.DE54-57)."
Context: Encounter
* extension contains
    present 0..1 MS and
    yearOfDiagnosis 0..1 MS and
    familyHistory 0..1 MS and
    previousIllnesses 0..1 MS
* extension[present].value[x] only boolean
* extension[yearOfDiagnosis].value[x] only date
* extension[familyHistory].value[x] only boolean
* extension[previousIllnesses].value[x] only string

Extension: SISRMEAllergyAssessmentGeneral
Id: sisrme-allergy-assessment-general
Title: "Allergy Assessment"
Description: "Allergy history and details (MISAU.G.DE58-66)."
Context: Encounter
* extension contains
    present 0..1 MS and
    drugAllergy 0..1 MS and
    medicationAllergyDetail 0..1 MS and
    foodAllergy 0..1 MS and
    foodAllergyDetail 0..1 MS and
    otherAllergy 0..1 MS and
    otherAllergyDetail 0..1 MS and
    reactions 0..1 MS and
    severity 0..1 MS
* extension[present].value[x] only boolean
* extension[drugAllergy].value[x] only boolean
* extension[medicationAllergyDetail].value[x] only string
* extension[foodAllergy].value[x] only boolean
* extension[foodAllergyDetail].value[x] only string
* extension[otherAllergy].value[x] only boolean
* extension[otherAllergyDetail].value[x] only string
* extension[reactions].value[x] only string
* extension[severity].value[x] only CodeableConcept
* extension[severity].valueCodeableConcept from SISRMEAllergySeverityVS (required)

Extension: SISRMEPediatricPersonalHistoryGeneral
Id: sisrme-pediatric-personal-history-general
Title: "Paediatric Personal History (General Module)"
Description: "Maternal, prenatal, delivery and early-life history (MISAU.G.DE86-103)."
Context: Encounter
* extension contains
    mothersAge 0..1 MS and
    numberOfPrenatalConsultations 0..1 MS and
    vdrlResult 0..1 MS and
    hivResultPrenatal 0..1 MS and
    numberOfChildren 0..1 MS and
    childrenAlive 0..1 MS and
    childrenDeceased 0..1 MS and
    deliveryLocation 0..1 MS and
    typeOfDelivery 0..1 MS and
    gestationalAgeAtBirthWeeks 0..1 MS and
    singlePregnancy 0..1 MS and
    twinPregnancy 0..1 MS and
    birthWeightGrams 0..1 MS and
    headCircumferenceAtBirthCm 0..1 MS and
    apgarScore 0..1 MS and
    breastfeedingType 0..1 MS and
    weaningAgeMonths 0..1 MS and
    reasonForWeaning 0..1 MS
* extension[mothersAge].value[x] only integer
* extension[numberOfPrenatalConsultations].value[x] only integer
* extension[vdrlResult].value[x] only string
* extension[hivResultPrenatal].value[x] only string
* extension[numberOfChildren].value[x] only integer
* extension[childrenAlive].value[x] only integer
* extension[childrenDeceased].value[x] only integer
* extension[deliveryLocation].value[x] only string
* extension[typeOfDelivery].value[x] only string
* extension[gestationalAgeAtBirthWeeks].value[x] only integer
* extension[singlePregnancy].value[x] only boolean
* extension[twinPregnancy].value[x] only boolean
* extension[birthWeightGrams].value[x] only Quantity
* extension[headCircumferenceAtBirthCm].value[x] only Quantity
* extension[apgarScore].value[x] only string
* extension[breastfeedingType].value[x] only CodeableConcept
* extension[breastfeedingType].valueCodeableConcept from SISRMEBreastfeedingTypeVS (extensible)
* extension[weaningAgeMonths].value[x] only integer
* extension[reasonForWeaning].value[x] only string

Extension: SISRMECurrentPregnancyStatus
Id: sisrme-current-pregnancy-status
Title: "Current Pregnancy Status"
Description: "Current pregnancy and breastfeeding status noted during a general consultation (MISAU.G.DE113-115)."
Context: Encounter
* extension contains
    pregnant 0..1 MS and
    gestationalAgeWeeks 0..1 MS and
    breastfeedingCurrent 0..1 MS
* extension[pregnant].value[x] only boolean
* extension[gestationalAgeWeeks].value[x] only integer
* extension[breastfeedingCurrent].value[x] only boolean

Extension: SISRMEVaccinationRecordEntry
Id: sisrme-vaccination-record-entry
Title: "Vaccination Record Entry"
Description: "A vaccination recorded during a general consultation (MISAU.G.DE116-119)."
Context: Encounter
* extension contains
    dose 0..1 MS and
    vaccineName 0..1 MS and
    administrationDate 0..1 MS
* extension[dose].value[x] only string
* extension[vaccineName].value[x] only string
* extension[administrationDate].value[x] only date

Extension: SISRMENutritionalClassification
Id: sisrme-nutritional-classification
Title: "Nutritional Classification"
Description: "Nutritional status classifications (MISAU.G.DE140-147). BMI, weight and height are recorded as SISRMEMCHVitalSign Observations; this extension carries only the derived classification labels."
Context: Encounter
* extension contains
    weightForAge 0..1 MS and
    weightForHeightUnder2y 0..1 MS and
    weightForHeightOver2y 0..1 MS and
    bmiForAge 0..1 MS and
    biotype 0..1 MS and
    nutritionalStatusAdult 0..1 MS
* extension[weightForAge].value[x] only string
* extension[weightForHeightUnder2y].value[x] only string
* extension[weightForHeightOver2y].value[x] only string
* extension[bmiForAge].value[x] only string
* extension[biotype].value[x] only CodeableConcept
* extension[biotype].valueCodeableConcept from SISRMEBiotypeVS (extensible)
* extension[nutritionalStatusAdult].value[x] only string

Extension: SISRMERegionalPhysicalExamAdult
Id: sisrme-regional-physical-exam-adult
Title: "Regional Physical Examination - Adult"
Description: "Free-text adult physical examination findings by anatomical region (MISAU.G.DE166-182)."
Context: Encounter
* extension contains
    skin 0..1 MS and
    mucousMembranes 0..1 MS and
    bodyHair 0..1 MS and
    nails 0..1 MS and
    skull 0..1 MS and
    face 0..1 MS and
    eyes 0..1 MS and
    noseAndParanasalSinuses 0..1 MS and
    earAndAuricle 0..1 MS and
    oropharynx 0..1 MS and
    neck 0..1 MS and
    chest 0..1 MS and
    cardiovascularExam 0..1 MS and
    respiratoryExam 0..1 MS and
    abdomen 0..1 MS and
    genitalia 0..1 MS and
    extremities 0..1 MS
* extension[skin].value[x] only string
* extension[mucousMembranes].value[x] only string
* extension[bodyHair].value[x] only string
* extension[nails].value[x] only string
* extension[skull].value[x] only string
* extension[face].value[x] only string
* extension[eyes].value[x] only string
* extension[noseAndParanasalSinuses].value[x] only string
* extension[earAndAuricle].value[x] only string
* extension[oropharynx].value[x] only string
* extension[neck].value[x] only string
* extension[chest].value[x] only string
* extension[cardiovascularExam].value[x] only string
* extension[respiratoryExam].value[x] only string
* extension[abdomen].value[x] only string
* extension[genitalia].value[x] only string
* extension[extremities].value[x] only string

Extension: SISRMERegionalPhysicalExamPediatricGeneral
Id: sisrme-regional-physical-exam-pediatric-general
Title: "Regional Physical Examination - Paediatric (General Module)"
Description: "Free-text paediatric physical examination findings by anatomical region (MISAU.G.DE185-192)."
Context: Encounter
* extension contains
    skinAndMucousMembranes 0..1 MS and
    lymphNodes 0..1 MS and
    eyesEarsAndNose 0..1 MS and
    mouthAndOropharynx 0..1 MS and
    lungAuscultation 0..1 MS and
    cardiacAuscultation 0..1 MS and
    genitalsAndAnus 0..1 MS and
    spineAndLimbs 0..1 MS
* extension[skinAndMucousMembranes].value[x] only string
* extension[lymphNodes].value[x] only string
* extension[eyesEarsAndNose].value[x] only string
* extension[mouthAndOropharynx].value[x] only string
* extension[lungAuscultation].value[x] only string
* extension[cardiacAuscultation].value[x] only string
* extension[genitalsAndAnus].value[x] only string
* extension[spineAndLimbs].value[x] only string

Extension: SISRMEPainAssessmentGeneral
Id: sisrme-pain-assessment-general
Title: "Pain Assessment"
Description: "Pain type, scale and intensity (MISAU.G.DE194-199)."
Context: Encounter
* extension contains
    type 0..* MS and
    scale 0..1 MS and
    intensity 0..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from SISRMEPainTypeVS (required)
* extension[scale].value[x] only integer
* extension[scale] ^short = "Pain Scale, 0-10 (DE198)"
* extension[intensity].value[x] only string

Extension: SISRMENeurologicalExaminationAdult
Id: sisrme-neurological-examination-adult
Title: "Neurological Examination - Adult"
Description: "Neurological examination findings (MISAU.G.DE202-223); GCS total score is recorded as a SISRMEMCHVitalSign Observation."
Context: Encounter
* extension contains
    pupilDiameterSymmetry 0..1 MS and
    pupilDiameter 0..1 MS and
    pupilResponseToLight 0..1 MS and
    muscleStrengthClassification 0..1 MS and
    locationOfDeficit 0..1 MS and
    meningealSign 0..* MS and
    notes 0..1 MS
* extension[pupilDiameterSymmetry].value[x] only string
* extension[pupilDiameter].value[x] only string
* extension[pupilResponseToLight].value[x] only CodeableConcept
* extension[pupilResponseToLight].valueCodeableConcept from SISRMEPupilResponseToLightVS (required)
* extension[muscleStrengthClassification].value[x] only CodeableConcept
* extension[muscleStrengthClassification].valueCodeableConcept from SISRMEMuscleStrengthClassificationVS (required)
* extension[locationOfDeficit].value[x] only string
* extension[meningealSign].value[x] only CodeableConcept
* extension[meningealSign].valueCodeableConcept from SISRMEMeningealSignVS (required)
* extension[notes].value[x] only string

Extension: SISRMENeurologicalExaminationPediatric
Id: sisrme-neurological-examination-pediatric
Title: "Neurological Examination - Paediatric"
Description: "Free-text paediatric neurological examination findings (MISAU.G.DE224-229)."
Context: Encounter
* extension contains
    reflexes 0..1 MS and
    muscleTone 0..1 MS and
    muscleStrength 0..1 MS and
    gait 0..1 MS and
    speech 0..1 MS and
    pupils 0..1 MS
* extension[reflexes].value[x] only string
* extension[muscleTone].value[x] only string
* extension[muscleStrength].value[x] only string
* extension[gait].value[x] only string
* extension[speech].value[x] only string
* extension[pupils].value[x] only string

Extension: SISRMEMedicalReassessment
Id: sisrme-medical-reassessment
Title: "Medical Reassessment"
Description: "Medical reassessment note (MISAU.G.DE230-231)."
Context: Encounter
* extension contains
    type 0..1 MS and
    note 0..1 MS
* extension[type].value[x] only string
* extension[note].value[x] only string

Extension: SISRMEClinicalEvolutionExt
Id: sisrme-clinical-evolution-ext
Title: "Clinical Evolution"
Description: "Clinical evolution/course during the consultation or admission (MISAU.G.DE232)."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEClinicalEvolutionVS (extensible)

Extension: SISRMEGeneralDiseaseScreeningFlags
Id: sisrme-general-disease-screening-flags
Title: "General Disease Screening Flags"
Description: "Brief serological-status and TB/malaria screening flags (MISAU.G.DE237-242)."
Context: Encounter
* extension contains
    mothersSerologicalStatusKnown 0..1 MS and
    childsSerologicalStatusKnown 0..1 MS and
    userSerologicalStatusUnknown 0..1 MS and
    tbExposureLast12Months 0..1 MS and
    tbSignsAndSymptoms 0..1 MS and
    testedForMalaria 0..1 MS
* extension[mothersSerologicalStatusKnown].value[x] only boolean
* extension[childsSerologicalStatusKnown].value[x] only boolean
* extension[userSerologicalStatusUnknown].value[x] only boolean
* extension[tbExposureLast12Months].value[x] only boolean
* extension[tbSignsAndSymptoms].value[x] only boolean
* extension[testedForMalaria].value[x] only boolean

Extension: SISRMEMedicationSideEffect
Id: sisrme-medication-side-effect
Title: "Medication Side Effect"
Description: "A medication side effect and its severity (MISAU.G.DE244-246)."
Context: Encounter
* extension contains
    present 0..1 MS and
    type 0..* MS and
    degree 0..1 MS
* extension[present].value[x] only boolean
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from SISRMESideEffectTypeVS (required)
* extension[degree].value[x] only CodeableConcept
* extension[degree].valueCodeableConcept from SISRMESideEffectDegreeVS (required)

Extension: SISRMEDetailedDiseaseScreeningPanel
Id: sisrme-detailed-disease-screening-panel
Title: "Detailed Disease Screening Panel"
Description: "TB, STI, cervical/breast cancer, diabetes, hypertension and HIV screening, performed during a general consultation (MISAU.G.DE289-324). TB symptoms reuse the value set defined for MISAU.F (TB Module)."
Context: Encounter
* extension contains
    tbExposureLast12Months 0..1 MS and
    tbHasSymptoms 0..1 MS and
    tbSymptom 0..* MS and
    tbPainlessCervicalLymphadenopathy 0..1 MS and
    stiHasSymptoms 0..1 MS and
    cacumScreeningUpToDate 0..1 MS and
    diabetesFamilyHistory 0..1 MS and
    diabetesOverweight 0..1 MS and
    diabetesUnintentionalWeightLoss 0..1 MS and
    diabetesScreeningUpToDate 0..1 MS and
    diabetesExcessiveThirst 0..1 MS and
    diabetesIncreasedHunger 0..1 MS and
    diabetesFrequentUrination 0..1 MS and
    diabetesLabRequestTrigger 0..1 MS and
    hbpFamilyHistory 0..1 MS and
    hbpPriorStroke 0..1 MS and
    hivKnownSerologicalStatus 0..1 MS and
    hivTestResultKnown 0..1 MS and
    dateOfLastHIVTest 0..1 MS and
    onART 0..1 MS and
    artLocation 0..1 MS and
    typeOfHIVTest 0..1 MS and
    hivTestResultNew 0..1 MS and
    hivTestDate 0..1 MS and
    testingLocationType 0..1 MS and
    presumptiveDiagnosisUnder18Months 0..1 MS and
    dateOfPresumptiveDiagnosis 0..1 MS
* extension[tbExposureLast12Months].value[x] only boolean
* extension[tbHasSymptoms].value[x] only boolean
* extension[tbSymptom].value[x] only CodeableConcept
* extension[tbSymptom].valueCodeableConcept from SISRMETBSymptomVS (required)
* extension[tbPainlessCervicalLymphadenopathy].value[x] only boolean
* extension[stiHasSymptoms].value[x] only boolean
* extension[cacumScreeningUpToDate].value[x] only boolean
* extension[diabetesFamilyHistory].value[x] only boolean
* extension[diabetesOverweight].value[x] only boolean
* extension[diabetesUnintentionalWeightLoss].value[x] only boolean
* extension[diabetesScreeningUpToDate].value[x] only boolean
* extension[diabetesExcessiveThirst].value[x] only boolean
* extension[diabetesIncreasedHunger].value[x] only boolean
* extension[diabetesFrequentUrination].value[x] only boolean
* extension[diabetesLabRequestTrigger].value[x] only boolean
* extension[hbpFamilyHistory].value[x] only boolean
* extension[hbpPriorStroke].value[x] only boolean
* extension[hivKnownSerologicalStatus].value[x] only boolean
* extension[hivTestResultKnown].value[x] only CodeableConcept
* extension[hivTestResultKnown].valueCodeableConcept from SISRMEHIVTestResultSimpleVS (required)
* extension[dateOfLastHIVTest].value[x] only date
* extension[onART].value[x] only boolean
* extension[artLocation].value[x] only string
* extension[typeOfHIVTest].value[x] only CodeableConcept
* extension[typeOfHIVTest].valueCodeableConcept from SISRMEHIVTestTypeGeneralVS (required)
* extension[hivTestResultNew].value[x] only CodeableConcept
* extension[hivTestResultNew].valueCodeableConcept from SISRMEHIVTestResultSimpleVS (required)
* extension[hivTestDate].value[x] only date
* extension[testingLocationType].value[x] only string
* extension[presumptiveDiagnosisUnder18Months].value[x] only string
* extension[dateOfPresumptiveDiagnosis].value[x] only date

Extension: SISRMELabTestRequestGeneral
Id: sisrme-lab-test-request-general
Title: "General Laboratory Test Request"
Description: "A laboratory test requested during a general consultation (MISAU.G.DE249-263), reusing the lab test priority value set defined for MISAU.F (TB Module)."
Context: Encounter
* extension contains
    priority 0..1 MS and
    testName 0..1 MS and
    sampleType 0..1 MS and
    examDate 0..1 MS and
    department 0..1 MS and
    service 0..1 MS and
    examGroup 0..1 MS and
    clinician 0..1 MS
* extension[priority].value[x] only CodeableConcept
* extension[priority].valueCodeableConcept from SISRMELabTestPriorityVS (required)
* extension[testName].value[x] only string
* extension[sampleType].value[x] only string
* extension[examDate].value[x] only date
* extension[department].value[x] only string
* extension[service].value[x] only string
* extension[examGroup].value[x] only string
* extension[clinician].value[x] only string

Extension: SISRMELabResultGeneral
Id: sisrme-lab-result-general
Title: "General Laboratory Result"
Description: "A laboratory result recorded during a general consultation (MISAU.G.DE261-264)."
Context: Encounter
* extension contains
    examName 0..1 MS and
    result 0..1 MS and
    referenceValue 0..1 MS
* extension[examName].value[x] only string
* extension[result].value[x] only string
* extension[referenceValue].value[x] only string

Extension: SISRMEImagingRequestAndResult
Id: sisrme-imaging-request-and-result
Title: "Imaging Request and Result"
Description: "Radiology, MRI and ultrasound requests and results (MISAU.G.DE266-273)."
Context: Encounter
* extension contains
    radiologyTest 0..1 MS and
    mriTest 0..1 MS and
    ultrasoundTest 0..1 MS and
    furtherObservations 0..1 MS and
    examDate 0..1 MS and
    results 0..1 MS and
    clinicianName 0..1 MS and
    referenceValue 0..1 MS
* extension[radiologyTest].value[x] only string
* extension[mriTest].value[x] only string
* extension[ultrasoundTest].value[x] only string
* extension[furtherObservations].value[x] only string
* extension[examDate].value[x] only date
* extension[results].value[x] only string
* extension[clinicianName].value[x] only string
* extension[referenceValue].value[x] only string

Extension: SISRMERapidTestResultPanel
Id: sisrme-rapid-test-result-panel
Title: "Rapid Test Result Panel"
Description: "Point-of-care rapid diagnostic test results (MISAU.G.DE276-281)."
Context: Encounter
* extension contains
    malaria 0..1 MS and
    hiv 0..1 MS and
    syphilis 0..1 MS and
    pregnancy 0..1 MS and
    covid 0..1 MS and
    hepatitisB 0..1 MS
* extension[malaria].value[x] only CodeableConcept
* extension[malaria].valueCodeableConcept from SISRMERapidTestResultVS (required)
* extension[hiv].value[x] only CodeableConcept
* extension[hiv].valueCodeableConcept from SISRMERapidTestResultVS (required)
* extension[syphilis].value[x] only CodeableConcept
* extension[syphilis].valueCodeableConcept from SISRMERapidTestResultVS (required)
* extension[pregnancy].value[x] only CodeableConcept
* extension[pregnancy].valueCodeableConcept from SISRMERapidTestResultVS (required)
* extension[covid].value[x] only CodeableConcept
* extension[covid].valueCodeableConcept from SISRMERapidTestResultVS (required)
* extension[hepatitisB].value[x] only CodeableConcept
* extension[hepatitisB].valueCodeableConcept from SISRMERapidTestResultVS (required)

Extension: SISRMETreatmentRequestEntry
Id: sisrme-treatment-request-entry
Title: "Treatment Request"
Description: "A non-pharmacological treatment requested/performed during a consultation (MISAU.G.DE288-297, Request Treatment)."
Context: Encounter
* extension contains
    treatmentName 0..1 MS and
    observations 0..1 MS and
    status 0..1 MS and
    nurseNotes 0..1 MS and
    dateTime 0..1 MS and
    nurseName 0..1 MS
* extension[treatmentName].value[x] only string
* extension[observations].value[x] only string
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from SISRMETreatmentRequestStatusVS (required)
* extension[nurseNotes].value[x] only string
* extension[dateTime].value[x] only dateTime
* extension[nurseName].value[x] only string

Extension: SISRMEDischargeSummary
Id: sisrme-discharge-summary
Title: "Discharge Summary"
Description: "Discharge details, outcome and destination (MISAU.G.DE288-323, Discharge)."
Context: Encounter
* extension contains
    admissionDate 0..1 MS and
    dischargeDate 0..1 MS and
    typeOfDischarge 0..1 MS and
    autopsyType 0..1 MS and
    overallResult 0..1 MS and
    degreeOfDisability 0..1 MS and
    establishedTherapy 0..1 MS and
    furtherObservations 0..1 MS and
    primaryDiagnosisCode 0..1 MS and
    primaryDiagnosisName 0..1 MS and
    secondaryDiagnosisCode 0..1 MS and
    secondaryDiagnosisName 0..1 MS and
    recommendations 0..1 MS and
    evolutionAndPrognosis 0..1 MS and
    outpatientContinuation 0..1 MS and
    outpatientService 0..1 MS and
    outpatientSpecialty 0..1 MS and
    transferHealthUnit 0..1 MS and
    destinationProvince 0..1 MS and
    destinationDistrict 0..1 MS and
    destinationHealthUnit 0..1 MS
* extension[admissionDate].value[x] only date
* extension[dischargeDate].value[x] only date
* extension[typeOfDischarge].value[x] only CodeableConcept
* extension[typeOfDischarge].valueCodeableConcept from SISRMETypeOfDischargeVS (required)
* extension[autopsyType].value[x] only CodeableConcept
* extension[autopsyType].valueCodeableConcept from SISRMEDischargeAutopsyTypeVS (required)
* extension[autopsyType] ^short = "For high-risk death type (DE299)"
* extension[overallResult].value[x] only CodeableConcept
* extension[overallResult].valueCodeableConcept from SISRMEOverallResultVS (required)
* extension[degreeOfDisability].value[x] only string
* extension[establishedTherapy].value[x] only string
* extension[furtherObservations].value[x] only string
* extension[primaryDiagnosisCode].value[x] only string
* extension[primaryDiagnosisName].value[x] only string
* extension[secondaryDiagnosisCode].value[x] only string
* extension[secondaryDiagnosisName].value[x] only string
* extension[recommendations].value[x] only string
* extension[evolutionAndPrognosis].value[x] only string
* extension[outpatientContinuation].value[x] only string
* extension[outpatientService].value[x] only string
* extension[outpatientSpecialty].value[x] only string
* extension[transferHealthUnit].value[x] only string
* extension[destinationProvince].value[x] only CodeableConcept
* extension[destinationProvince].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[destinationDistrict].value[x] only CodeableConcept
* extension[destinationDistrict].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[destinationHealthUnit].value[x] only string

Extension: SISRMEPatientTransferRecord
Id: sisrme-patient-transfer-record
Title: "Patient Transfer Record"
Description: "A patient admission/transfer/reference event, including receipt at the destination (MISAU.G.DE325-357, Transfer Patient)."
Context: Encounter
* extension contains
    admissionType 0..1 MS and
    ward 0..1 MS and
    bed 0..1 MS and
    admissionDate 0..1 MS and
    service 0..1 MS and
    admissionDateTime 0..1 MS and
    mainComplaint 0..1 MS and
    transferReferenceDate 0..1 MS and
    transferAction 0..1 MS and
    transferType 0..1 MS and
    transferReason 0..1 MS and
    clinicianName 0..1 MS and
    professionalCategory 0..1 MS and
    destinationProvince 0..1 MS and
    destinationDistrict 0..1 MS and
    destinationHealthUnit 0..1 MS and
    destinationTransferType 0..1 MS and
    destinationWard 0..1 MS and
    destinationSpecialty 0..1 MS and
    receiveReferenceNumber 0..1 MS and
    receiveTransferDate 0..1 MS and
    receiveTransferType 0..1 MS and
    receiveTransferReason 0..1 MS and
    receiveResponse 0..1 MS and
    receivingClinicianName 0..1 MS
* extension[admissionType].value[x] only CodeableConcept
* extension[admissionType].valueCodeableConcept from SISRMEAdmissionTypeVS (required)
* extension[ward].value[x] only string
* extension[bed].value[x] only string
* extension[admissionDate].value[x] only date
* extension[service].value[x] only string
* extension[admissionDateTime].value[x] only dateTime
* extension[mainComplaint].value[x] only string
* extension[transferReferenceDate].value[x] only date
* extension[transferAction].value[x] only string
* extension[transferType].value[x] only string
* extension[transferReason].value[x] only string
* extension[clinicianName].value[x] only string
* extension[professionalCategory].value[x] only string
* extension[destinationProvince].value[x] only CodeableConcept
* extension[destinationProvince].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[destinationDistrict].value[x] only CodeableConcept
* extension[destinationDistrict].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[destinationHealthUnit].value[x] only string
* extension[destinationTransferType].value[x] only string
* extension[destinationWard].value[x] only string
* extension[destinationSpecialty].value[x] only string
* extension[receiveReferenceNumber].value[x] only string
* extension[receiveTransferDate].value[x] only date
* extension[receiveTransferType].value[x] only string
* extension[receiveTransferReason].value[x] only string
* extension[receiveResponse].value[x] only string
* extension[receivingClinicianName].value[x] only string

// --- SISRMEDiagnosisRecord (Condition) extensions ---

Extension: SISRMEDiagnosisTypeExt
Id: sisrme-diagnosis-type-ext
Title: "Type of Diagnosis"
Description: "Whether this diagnosis is provisional or confirmed (MISAU.G.DE284-286)."
Context: Condition
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEDiagnosisTypeVS (required)

Extension: SISRMEDiagnosisService
Id: sisrme-diagnosis-service
Title: "Diagnosis Service"
Description: "The service under which the diagnosis was recorded (MISAU.G.DE282)."
Context: Condition
* value[x] only string

Extension: SISRMEDiagnosisStadium
Id: sisrme-diagnosis-stadium
Title: "Diagnosis Stadium"
Description: "T/S staging classification for the diagnosis (MISAU.G.DE288)."
Context: Condition
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEStadiumVS (required)
