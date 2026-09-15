// Extensions supporting SISRMETBCase (Condition) and SISRMETBConsultation
// (Encounter), for MISAU.F (TB Module) data elements with no matching
// core FHIR element. Repeating "select all that apply" checklist sections
// (Risk Group, Risk Factors, TB Symptoms, Adherence Risk Factors, Social
// Support) are each modeled as a single 0..* coded extension rather than
// one boolean sub-extension per option, which scales better than the
// per-flag boolean pattern used for the smaller checklists in earlier
// modules.

// --- SISRMETBCase (Condition) extensions ---

Extension: SISRMETBPresumptive
Id: sisrme-tb-presumptive
Title: "Presumptive TB Case"
Description: "Whether this is a presumptive (not yet confirmed) TB case (MISAU.TB.DE.27)."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from $v2-0136-vs (required)

Extension: SISRMETBTypeExtension
Id: sisrme-tb-type-ext
Title: "Type of TB"
Description: "Drug sensitivity classification of the TB case (MISAU.TB.DE.30, DE.54-56)."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBTypeVS (required)

Extension: SISRMETBDetailedState
Id: sisrme-tb-detailed-state
Title: "TB Case Detailed State/Outcome"
Description: "The detailed TB case lifecycle state or treatment outcome (MISAU.TB.DE.33-41, DE.188-195), in addition to the coarse-grained core Condition.clinicalStatus."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBCaseStateVS (required)

Extension: SISRMETBProvenanceRef
Id: sisrme-tb-provenance-ref
Title: "TB Case Provenance"
Description: "Origin from which the TB case was detected or referred (MISAU.TB.DE.50-53), reusing the provenance value set defined for MISAU.B."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBProvenanceVS (extensible)

Extension: SISRMETBRiskGroupMembership
Id: sisrme-tb-risk-group-membership
Title: "TB Risk Group Membership"
Description: "Occupational/social risk group(s) the patient belongs to (MISAU.TB.DE.59-68)."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBRiskGroupVS (required)

Extension: SISRMETBRiskGroupOther
Id: sisrme-tb-risk-group-other
Title: "TB Risk Group, Other (specify)"
Description: "Free text for an 'Other' TB risk group (MISAU.TB.DE.68)."
Context: Condition
* ^experimental = true
* value[x] only string

Extension: SISRMETBRiskFactorPresent
Id: sisrme-tb-risk-factor-present
Title: "TB Risk Factor Present"
Description: "Clinical/behavioral risk factor(s) present (MISAU.TB.DE.69-75)."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBRiskFactorVS (required)

Extension: SISRMETBRiskFactorOther
Id: sisrme-tb-risk-factor-other
Title: "TB Risk Factor, Other (specify)"
Description: "Free text for an 'Other' TB risk factor (MISAU.TB.DE.75)."
Context: Condition
* ^experimental = true
* value[x] only string

Extension: SISRMETBDiseaseLocation
Id: sisrme-tb-disease-location
Title: "TB Disease Location"
Description: "Anatomical categorization of the TB case (MISAU.TB.DE.76-80)."
Context: Condition
* ^experimental = true
* extension contains
    category 0..1 MS and
    extrapulmonarySite 0..1 MS
* extension[category].value[x] only CodeableConcept
* extension[category].valueCodeableConcept from SISRMETBLocationVS (required)
* extension[extrapulmonarySite].value[x] only string
* extension[extrapulmonarySite] ^short = "Location (Extrapulmonary), free text (DE.80)"

Extension: SISRMETBBacteriologicalStatusExt
Id: sisrme-tb-bacteriological-status-ext
Title: "TB Diagnostic Basis"
Description: "Whether the TB case was bacteriologically confirmed or clinically diagnosed (MISAU.TB.DE.81-82)."
Context: Condition
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBBacteriologicalStatusVS (required)

Extension: SISRMETBPriorTreatmentCategoryExt
Id: sisrme-tb-prior-treatment-category-ext
Title: "TB Prior Treatment Category"
Description: "Registration category describing the patient's TB treatment history (MISAU.TB.DE.83-89)."
Context: Condition
* ^experimental = true
* extension contains
    category 0..1 MS and
    otherSpecify 0..1 MS
* extension[category].value[x] only CodeableConcept
* extension[category].valueCodeableConcept from SISRMETBPriorTreatmentCategoryVS (required)
* extension[otherSpecify].value[x] only string

Extension: SISRMETBPreviousTreatmentEpisode
Id: sisrme-tb-previous-treatment-episode
Title: "Previous TB Treatment Episode"
Description: "A previous course of TB treatment (MISAU.TB.DE.90-97)."
Context: Condition
* ^experimental = true
* extension contains
    startDate 0..1 MS and
    endDate 0..1 MS and
    regimen 0..1 MS and
    durationMonths 0..1 MS and
    result 0..1 MS
* extension[startDate].value[x] only date
* extension[endDate].value[x] only date
* extension[regimen].value[x] only string
* extension[regimen] ^short = "Treatment Regimen (DE.92), free text (e.g. RHZE)"
* extension[durationMonths].value[x] only integer
* extension[result].value[x] only string

Extension: SISRMETBComorbidityRecord
Id: sisrme-tb-comorbidity-record
Title: "TB Comorbidity"
Description: "A comorbid condition recorded alongside the TB case (MISAU.TB.DE.98-109)."
Context: Condition
* ^experimental = true
* extension contains
    pathology 0..1 MS and
    otherSpecify 0..1 MS and
    date 0..1 MS and
    treatment 0..1 MS
* extension[pathology].value[x] only CodeableConcept
* extension[pathology].valueCodeableConcept from SISRMETBComorbidityVS (required)
* extension[otherSpecify].value[x] only string
* extension[date].value[x] only date
* extension[treatment].value[x] only string

Extension: SISRMETBContactTracingSummary
Id: sisrme-tb-contact-tracing-summary
Title: "TB Contact Tracing Summary"
Description: "Aggregate counts from contact/family member tracing for this TB index case (MISAU.TB.DE.16-23)."
Context: Condition
* ^experimental = true
* extension contains
    contactsUnder5 0..1 MS and
    contacts5to14 0..1 MS and
    contacts15Plus 0..1 MS and
    contactsTraced 0..1 MS and
    contactsInitiatedTPT 0..1 MS and
    contactsInitiatedTAT 0..1 MS
* extension[contactsUnder5].value[x] only integer
* extension[contactsUnder5] ^short = "Number of Contacts aged 0 to 4 years (DE.16-17, DE.20)"
* extension[contacts5to14].value[x] only integer
* extension[contacts5to14] ^short = "Number of Contacts aged 5 to 14 years (DE.16, DE.18, DE.20)"
* extension[contacts15Plus].value[x] only integer
* extension[contacts15Plus] ^short = "Number of Contacts aged 15 or older (DE.16, DE.19, DE.20)"
* extension[contactsTraced].value[x] only integer
* extension[contactsInitiatedTPT].value[x] only integer
* extension[contactsInitiatedTAT].value[x] only integer

Extension: SISRMETBTreatmentRegimen
Id: sisrme-tb-treatment-regimen
Title: "TB Treatment Regimen (current)"
Description: "The current TB treatment regimen, duration and start date (MISAU.TB.DE.57-58, registration for the TB service)."
Context: Condition
* ^experimental = true
* extension contains
    regimen 0..1 MS and
    durationMonths 0..1 MS and
    startDate 0..1 MS
* extension[regimen].value[x] only string
* extension[durationMonths].value[x] only integer
* extension[durationMonths] ^short = "Treatment duration in months (DE.57)"
* extension[startDate].value[x] only date

Extension: SISRMETBMedicationIntake
Id: sisrme-tb-medication-intake
Title: "TB Medication Intake Log Entry"
Description: "A single entry in the directly-observed TB medication intake monitoring log (MISAU.TB.DE.42-49)."
Context: Condition
* ^experimental = true
* extension contains
    monitoringLocation 0..1 MS and
    dateTaken 1..1 MS
* extension[monitoringLocation].value[x] only CodeableConcept
* extension[monitoringLocation].valueCodeableConcept from SISRMETBMonitoringLocationVS (required)
* extension[dateTaken].value[x] only date

// --- SISRMETBConsultation (Encounter) extensions ---

Extension: SISRMETBConsultationTypeExt
Id: sisrme-tb-consultation-type-ext
Title: "TB Consultation Type"
Description: "Type of TB consultation (MISAU.TB.DE.1-3)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBConsultationTypeVS (required)

Extension: SISRMETBDiseaseScreening
Id: sisrme-tb-disease-screening
Title: "TB Disease Screening"
Description: "TB exposure and symptom screening performed at this visit (MISAU.TB.DE.4-15)."
Context: Encounter
* ^experimental = true
* extension contains
    exposedToTBLast2Years 0..1 MS and
    hasSymptoms 0..1 MS and
    symptom 0..* MS
* extension[exposedToTBLast2Years].value[x] only CodeableConcept
* extension[exposedToTBLast2Years].valueCodeableConcept from $v2-0136-vs (required)
* extension[exposedToTBLast2Years] ^short = "Have you been exposed to TB in the last (2) years? (DE.4)"
* extension[hasSymptoms].value[x] only CodeableConcept
* extension[hasSymptoms].valueCodeableConcept from $v2-0136-vs (required)
* extension[hasSymptoms] ^short = "Symptoms of Tuberculosis? (DE.7)"
* extension[symptom].value[x] only CodeableConcept
* extension[symptom].valueCodeableConcept from SISRMETBSymptomVS (required)

Extension: SISRMEPsychomotorDevelopment
Id: sisrme-psychomotor-development
Title: "Psychomotor Development"
Description: "Free-text note on psychomotor development, for pediatric patients (MISAU.TB.DE.112)."
Context: Encounter
* ^experimental = true
* value[x] only string

Extension: SISRMEMenstrualAndPregnancyHistory
Id: sisrme-menstrual-and-pregnancy-history
Title: "Menstrual and Pregnancy/Lactation History"
Description: "Menstrual, pregnancy and lactation history (MISAU.TB.DE.113-122)."
Context: Encounter
* ^experimental = true
* extension contains
    menarcheAge 0..1 MS and
    menopause 0..1 MS and
    secondToLastPeriodDate 0..1 MS and
    lastPeriodDate 0..1 MS and
    cyclePeriodicityDays 0..1 MS and
    flowCharacteristics 0..1 MS and
    pregnant 0..1 MS and
    gestationalAgeWeeks 0..1 MS and
    breastfeeding 0..1 MS
* extension[menarcheAge].value[x] only integer
* extension[menopause].value[x] only boolean
* extension[secondToLastPeriodDate].value[x] only date
* extension[lastPeriodDate].value[x] only date
* extension[cyclePeriodicityDays].value[x] only integer
* extension[flowCharacteristics].value[x] only string
* extension[pregnant].value[x] only CodeableConcept
* extension[pregnant].valueCodeableConcept from $v2-0136-vs (required)
* extension[gestationalAgeWeeks].value[x] only integer
* extension[breastfeeding].value[x] only CodeableConcept
* extension[breastfeeding].valueCodeableConcept from $v2-0136-vs (required)

Extension: SISRMETBPhysicalExamFindings
Id: sisrme-tb-physical-exam-findings
Title: "TB Physical Examination Findings"
Description: "Physical examination findings by body system, recorded during a TB consultation (MISAU.TB.DE.123-126)."
Context: Encounter
* ^experimental = true
* extension contains
    mucousMembranes 0..1 MS and
    respiratory 0..1 MS and
    abdomen 0..1 MS and
    neuromuscular 0..1 MS
* extension[mucousMembranes].value[x] only string
* extension[respiratory].value[x] only string
* extension[abdomen].value[x] only string
* extension[neuromuscular].value[x] only string

Extension: SISRMETBLabTestRequest
Id: sisrme-tb-lab-test-request
Title: "TB Laboratory Test Request"
Description: "A laboratory test requested during a TB consultation (MISAU.TB.DE.127-132)."
Context: Encounter
* ^experimental = true
* extension contains
    priority 0..1 MS and
    testName 0..1 MS and
    technicalGroup 0..1 MS and
    examDate 0..1 MS
* extension[priority].value[x] only CodeableConcept
* extension[priority].valueCodeableConcept from SISRMELabTestPriorityVS (required)
* extension[testName].value[x] only string
* extension[testName] ^short = "Laboratory test name (DE.130), free text (single selection list of laboratory test names in the source system)"
* extension[technicalGroup].value[x] only string
* extension[examDate].value[x] only date

Extension: SISRMETBLabAndImagingResultSummary
Id: sisrme-tb-lab-and-imaging-result-summary
Title: "TB Laboratory and Imaging Result Summary"
Description: "Free-text summary of TB bacteriology and imaging results (MISAU.TB.DE.133-150)."
Context: Encounter
* ^experimental = true
* extension contains
    microscopy 0..1 MS and
    xpert 0..1 MS and
    lam 0..1 MS and
    culture 0..1 MS and
    radiology 0..1 MS and
    mri 0..1 MS and
    ultrasound 0..1 MS and
    furtherObservations 0..1 MS
* extension[microscopy].value[x] only string
* extension[xpert].value[x] only string
* extension[xpert] ^short = "Xpert (GeneXpert MTB/RIF) result (DE.143)"
* extension[lam].value[x] only string
* extension[lam] ^short = "LAM (Lipoarabinomannan) result (DE.144)"
* extension[culture].value[x] only string
* extension[radiology].value[x] only string
* extension[mri].value[x] only string
* extension[ultrasound].value[x] only string
* extension[furtherObservations].value[x] only string

Extension: SISRMETBAdherenceRiskFactorPresent
Id: sisrme-tb-adherence-risk-factor-present
Title: "TB Adherence Risk Factor Present"
Description: "Factor(s) that may affect adherence to TB treatment, identified during counseling (MISAU.TB.DE.151-167)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBAdherenceRiskFactorVS (required)

Extension: SISRMETBMentalHealthAssessment
Id: sisrme-tb-mental-health-assessment
Title: "TB Mental Health Assessment"
Description: "Mental health screening, suicide risk and intervention during TB counseling (MISAU.TB.DE.168-178)."
Context: Encounter
* ^experimental = true
* extension contains
    screeningResult 0..1 MS and
    suicideRisk 0..1 MS and
    adherenceCounselingProvided 0..1 MS and
    interventionProvided 0..1 MS
* extension[screeningResult].value[x] only CodeableConcept
* extension[screeningResult].valueCodeableConcept from SISRMETBMentalHealthScreeningVS (required)
* extension[suicideRisk].value[x] only CodeableConcept
* extension[suicideRisk].valueCodeableConcept from $v2-0136-vs (required)
* extension[adherenceCounselingProvided].value[x] only CodeableConcept
* extension[adherenceCounselingProvided].valueCodeableConcept from $v2-0136-vs (required)
* extension[interventionProvided].value[x] only CodeableConcept
* extension[interventionProvided].valueCodeableConcept from $v2-0136-vs (required)
* extension[interventionProvided] ^short = "Mental Health Intervention (DE.176)"

Extension: SISRMETBSocialSupportProvided
Id: sisrme-tb-social-support-provided
Title: "TB Social Support Provided"
Description: "Social support provided to the patient (MISAU.TB.DE.179-181)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBSocialSupportVS (required)

Extension: SISRMETBTreatmentInterruption
Id: sisrme-tb-treatment-interruption
Title: "TB Treatment Interruption"
Description: "Tracking of a TB treatment interruption and patient tracing (MISAU.TB.DE.182-184)."
Context: Encounter
* ^experimental = true
* extension contains
    interrupted 0..1 MS and
    patientFound 0..1 MS and
    patientReturned 0..1 MS
* extension[interrupted].value[x] only CodeableConcept
* extension[interrupted].valueCodeableConcept from $v2-0136-vs (required)
* extension[patientFound].value[x] only CodeableConcept
* extension[patientFound].valueCodeableConcept from $v2-0136-vs (required)
* extension[patientReturned].value[x] only CodeableConcept
* extension[patientReturned].valueCodeableConcept from $v2-0136-vs (required)

Extension: SISRMETBAdherenceAssessmentExt
Id: sisrme-tb-adherence-assessment-ext
Title: "TB Follow-up Adherence Assessment"
Description: "Follow-up-visit assessment of TB treatment adherence (MISAU.TB.DE.185-187)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETBAdherenceAssessmentVS (required)
