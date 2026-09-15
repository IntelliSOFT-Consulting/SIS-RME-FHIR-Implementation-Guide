// Extensions supporting SISRMEHIVConsultation (Encounter), for MISAU.C
// (HIV Module) data elements with no matching core FHIR element. Grouped
// to mirror the source data dictionary's own section structure (ART
// Consultation, Advanced HIV Disease, APSS & PP, Alternative & Line
// Treatment). Vitals/anthropometrics and CD4/viral load are modeled
// separately as Observations (see observation-hiv-vitals.fsh) since they
// are numeric/LOINC-coded measurements, not administrative or checklist
// data best captured as extensions.

Extension: SISRMEHIVTesting
Id: sisrme-hiv-testing
Title: "HIV Testing and Diagnosis"
Description: "HIV testing and diagnosis details (MISAU.C.DE2-DE10)."
Context: Encounter
* ^experimental = true
* extension contains
    testType 0..1 MS and
    positiveTestDate 0..1 MS and
    testingSite 0..1 MS and
    presumptiveDiagnosisDate 0..1 MS and
    firstPCRResult 0..1 MS and
    firstPCRDate 0..1 MS and
    secondDiscordantPCRResult 0..1 MS and
    secondDiscordantPCRDate 0..1 MS and
    definitiveDiagnosticCriteria 0..1 MS
* extension[testType].value[x] only CodeableConcept
* extension[testType].valueCodeableConcept from SISRMEHIVTestTypeVS (required)
* extension[testType] ^short = "HIV Test Type (DE2)"
* extension[positiveTestDate].value[x] only date
* extension[positiveTestDate] ^short = "HIV+ Test Date (DE3)"
* extension[testingSite].value[x] only string
* extension[testingSite] ^short = "HIV Testing Site (DE4)"
* extension[presumptiveDiagnosisDate].value[x] only date
* extension[presumptiveDiagnosisDate] ^short = "Date of Presumptive Diagnosis, paediatric (DE5)"
* extension[firstPCRResult].value[x] only CodeableConcept
* extension[firstPCRResult].valueCodeableConcept from SISRMEPCRResultVS (required)
* extension[firstPCRResult] ^short = "1st PCR Result (DE6)"
* extension[firstPCRDate].value[x] only date
* extension[secondDiscordantPCRResult].value[x] only CodeableConcept
* extension[secondDiscordantPCRResult].valueCodeableConcept from SISRMEPCRResultVS (required)
* extension[secondDiscordantPCRResult] ^short = "2nd Discordant PCR Result (DE8)"
* extension[secondDiscordantPCRDate].value[x] only date
* extension[definitiveDiagnosticCriteria].value[x] only CodeableConcept
* extension[definitiveDiagnosticCriteria].valueCodeableConcept from SISRMEDefinitiveDiagnosticCriteriaVS (required)

Extension: SISRMEARTHistory
Id: sisrme-art-history
Title: "Prior ART History"
Description: "Whether and what ARVs the patient has taken previously, and prior ART clinic attendance (MISAU.C.DE12-14)."
Context: Encounter
* ^experimental = true
* extension contains
    priorARVUse 0..1 MS and
    priorARVTypes 0..1 MS and
    everAttendedARTClinic 0..1 MS
* extension[priorARVUse].value[x] only CodeableConcept
* extension[priorARVUse].valueCodeableConcept from $v2-0136-vs (required)
* extension[priorARVUse] ^short = "Has the Patient Taken ARVs Before? (DE12)"
* extension[priorARVTypes].value[x] only string
* extension[priorARVTypes] ^short = "Types of ARVs Taken Previously (DE13)"
* extension[everAttendedARTClinic].value[x] only CodeableConcept
* extension[everAttendedARTClinic].valueCodeableConcept from $v2-0136-vs (required)

Extension: SISRMETPTProphylaxis
Id: sisrme-tpt-prophylaxis
Title: "TPT Prophylaxis"
Description: "TB preventive therapy regimen and dates (MISAU.C.DE23-25)."
Context: Encounter
* ^experimental = true
* extension contains
    regimen 0..1 MS and
    startDate 0..1 MS and
    endDate 0..1 MS
* extension[regimen].value[x] only CodeableConcept
* extension[regimen].valueCodeableConcept from SISRMETPTRegimenVS (extensible)
* extension[startDate].value[x] only date
* extension[endDate].value[x] only date

Extension: SISRMEARTInitiation
Id: sisrme-art-initiation
Title: "ART Initiation"
Description: "Details of HIV-care and ART enrollment and initiation (MISAU.C.DE26-DE37)."
Context: Encounter
* ^experimental = true
* extension contains
    hivCareStartDate 0..1 MS and
    hivCareHomeFacility 0..1 MS and
    hivCareHomeSector 0..1 MS and
    artStartDate 0..1 MS and
    artStartFacility 0..1 MS and
    initialRegimen 0..1 MS and
    whoStageAtInitiation 0..1 MS and
    pregnantAtStart 0..1 MS and
    breastfeedingAtStart 0..1 MS and
    cd4AtStartAbsolute 0..1 MS and
    cd4AtStartPercentage 0..1 MS and
    cd4AtStartSemiQuantitative 0..1 MS
* extension[hivCareStartDate].value[x] only date
* extension[hivCareHomeFacility].value[x] only string
* extension[hivCareHomeSector].value[x] only string
* extension[artStartDate].value[x] only date
* extension[artStartFacility].value[x] only string
* extension[initialRegimen].value[x] only string
* extension[initialRegimen] ^short = "Initial ART Regimen, 1st Line (DE17), free text (e.g. TDF/3TC/DTG)"
* extension[whoStageAtInitiation].value[x] only CodeableConcept
* extension[whoStageAtInitiation].valueCodeableConcept from SISRMEWHOClinicalStageVS (required)
* extension[pregnantAtStart].value[x] only CodeableConcept
* extension[pregnantAtStart].valueCodeableConcept from $v2-0136-vs (required)
* extension[breastfeedingAtStart].value[x] only CodeableConcept
* extension[breastfeedingAtStart].valueCodeableConcept from $v2-0136-vs (required)
* extension[cd4AtStartAbsolute].value[x] only integer
* extension[cd4AtStartPercentage].value[x] only decimal
* extension[cd4AtStartSemiQuantitative].value[x] only string

Extension: SISRMERegimenChange
Id: sisrme-regimen-change
Title: "ART Regimen Change"
Description: "A change to an alternative or subsequent line of ART regimen (MISAU.C, Alternative & Line Treatment section, consolidating the 1st Line Alternative, 2nd Line and 3rd Line Regimen change tables into one repeating structure)."
Context: Encounter
* ^experimental = true
* extension contains
    line 1..1 MS and
    regimen 0..1 MS and
    reason 0..1 MS and
    date 0..1 MS
* extension[line].value[x] only CodeableConcept
* extension[line].valueCodeableConcept from SISRMERegimenLineVS (required)
* extension[regimen].value[x] only string
* extension[reason].value[x] only string
* extension[date].value[x] only date

Extension: SISRMEScreeningPanel
Id: sisrme-screening-panel
Title: "Screening Panel"
Description: "Results of routine clinical screenings performed during an HIV consultation (MISAU.C.DE36-40)."
Context: Encounter
* ^experimental = true
* extension contains
    sti 0..1 MS and
    cervicalCancer 0..1 MS and
    diabetes 0..1 MS and
    tb 0..1 MS and
    hypertension 0..1 MS
* extension[sti].value[x] only CodeableConcept
* extension[sti].valueCodeableConcept from SISRMEScreeningResultVS (required)
* extension[sti] ^short = "STI Screening (DE36)"
* extension[cervicalCancer].value[x] only CodeableConcept
* extension[cervicalCancer].valueCodeableConcept from SISRMEScreeningResultVS (required)
* extension[cervicalCancer] ^short = "Cervical Cancer (CACUM) Screening (DE37)"
* extension[diabetes].value[x] only CodeableConcept
* extension[diabetes].valueCodeableConcept from SISRMEScreeningResultVS (required)
* extension[tb].value[x] only CodeableConcept
* extension[tb].valueCodeableConcept from SISRMEScreeningResultVS (required)
* extension[hypertension].value[x] only CodeableConcept
* extension[hypertension].valueCodeableConcept from SISRMEScreeningResultVS (required)
* extension[hypertension] ^short = "Hypertension (HTA) Screening (DE40)"

Extension: SISRMEFamilyPlanningStatus
Id: sisrme-family-planning-status
Title: "Family Planning Status"
Description: "Family planning method in current use (MISAU.C.DE43-44)."
Context: Encounter
* ^experimental = true
* extension contains
    method 0..1 MS and
    otherSpecify 0..1 MS
* extension[method].value[x] only CodeableConcept
* extension[method].valueCodeableConcept from SISRMEFamilyPlanningMethodVS (required)
* extension[otherSpecify].value[x] only string

Extension: SISRMEHIVAllergySummary
Id: sisrme-hiv-allergy-summary
Title: "Allergy Registry Summary"
Description: "Free-text summary of the allergy registry reviewed during the consultation (MISAU.C.DE35). See the core FHIR AllergyIntolerance resource for structured allergy recording in a future iteration."
Context: Encounter
* ^experimental = true
* value[x] only string

Extension: SISRMEMenstrualHistorySummary
Id: sisrme-menstrual-history-summary
Title: "Menstrual History Summary"
Description: "Free-text summary of menstrual history (MISAU.C.DE42)."
Context: Encounter
* ^experimental = true
* value[x] only string

Extension: SISRMEChronicConditionsSummary
Id: sisrme-chronic-conditions-summary
Title: "Medical Conditions / Chronic Diseases Summary"
Description: "Free-text summary of medical conditions/chronic diseases (MISAU.C.DE41)."
Context: Encounter
* ^experimental = true
* value[x] only string

Extension: SISRMEWHOStageCurrent
Id: sisrme-who-stage-current
Title: "Current WHO HIV Clinical Stage"
Description: "WHO clinical stage as assessed at the current visit (MISAU.C.DE56)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEWHOClinicalStageVS (required)

Extension: SISRMEAdherenceToART
Id: sisrme-adherence-to-art
Title: "Adherence to ART (clinical impression)"
Description: "Clinician's overall impression of the patient's ART adherence at this visit (MISAU.C.DE57)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEAdherenceClassificationVS (extensible)

Extension: SISRMESideEffectsSummary
Id: sisrme-side-effects-summary
Title: "ART Side Effects Summary"
Description: "Free-text summary of reported ART side effects (MISAU.C.DE58)."
Context: Encounter
* ^experimental = true
* value[x] only string

Extension: SISRMEDifferentiatedServiceDelivery
Id: sisrme-differentiated-service-delivery
Title: "Differentiated Service Delivery (MDS)"
Description: "Eligibility for, and enrollment state in, a differentiated ART service delivery model (MISAU.C.DE59-61)."
Context: Encounter
* ^experimental = true
* extension contains
    eligible 0..1 MS and
    state 0..1 MS and
    modelType 0..1 MS
* extension[eligible].value[x] only CodeableConcept
* extension[eligible].valueCodeableConcept from $v2-0136-vs (required)
* extension[eligible] ^short = "MDS Eligibility (DE59)"
* extension[state].value[x] only CodeableConcept
* extension[state].valueCodeableConcept from SISRMEDSDStateVS (required)
* extension[modelType].value[x] only string
* extension[modelType] ^short = "Another MDS Model, specify (DE61)"

Extension: SISRMEAdvancedHIVDisease
Id: sisrme-advanced-hiv-disease
Title: "Advanced HIV Disease (Kaposi's Sarcoma Chemotherapy)"
Description: "Chemotherapy details for Kaposi's sarcoma in the context of advanced HIV disease (MISAU.C.DE62-67)."
Context: Encounter
* ^experimental = true
* extension contains
    chemotherapyIndicated 0..1 MS and
    cycleNumber 0..1 MS and
    cycleStartDate 0..1 MS and
    cycleEndDate 0..1 MS and
    regimen 0..1 MS and
    regimenOther 0..1 MS
* extension[chemotherapyIndicated].value[x] only boolean
* extension[cycleNumber].value[x] only integer
* extension[cycleStartDate].value[x] only date
* extension[cycleEndDate].value[x] only date
* extension[regimen].value[x] only string
* extension[regimen] ^short = "Chemotherapy Regimen for Kaposi's Sarcoma (DE66), free text (e.g. ABV)"
* extension[regimenOther].value[x] only string

Extension: SISRMEAdherenceCounseling
Id: sisrme-adherence-counseling
Title: "Adherence and Psychosocial Counseling (APSS core)"
Description: "Core adherence-preparation and psychosocial counseling assessment (MISAU.C.DE67-DE74)."
Context: Encounter
* ^experimental = true
* extension contains
    reasonForConsultation 0..1 MS and
    acceptanceOfDiagnosis 0..1 MS and
    importanceOfStartingART 0..1 MS and
    advantagesOfConfidant 0..1 MS and
    counsellingObservations 0..1 MS and
    readyToStartARTDate 0..1 MS and
    hasPsychosocialFactors 0..1 MS and
    psychosocialFactors 0..1 MS
* extension[reasonForConsultation].value[x] only CodeableConcept
* extension[reasonForConsultation].valueCodeableConcept from SISRMEReasonForConsultationVS (extensible)
* extension[acceptanceOfDiagnosis].value[x] only boolean
* extension[importanceOfStartingART].value[x] only boolean
* extension[advantagesOfConfidant].value[x] only boolean
* extension[advantagesOfConfidant] ^short = "Advantages of Involving a Confidant (DE70)"
* extension[counsellingObservations].value[x] only string
* extension[readyToStartARTDate].value[x] only date
* extension[readyToStartARTDate] ^short = "Date Patient Ready to Start ART (DE72)"
* extension[hasPsychosocialFactors].value[x] only boolean
* extension[psychosocialFactors].value[x] only string

Extension: SISRMEDisclosureAssessment
Id: sisrme-disclosure-assessment
Title: "Diagnostic Disclosure Assessment"
Description: "Assessment and planning around HIV diagnostic disclosure, primarily for pediatric/adolescent patients (MISAU.C.DE75-DE87)."
Context: Encounter
* ^experimental = true
* extension contains
    caregiverConsent 0..1 MS and
    disclosureStatus 0..1 MS and
    childKnowsNameAndCaregivers 0..1 MS and
    childManagesHygieneIndependently 0..1 MS and
    childExplainsMedicationImportance 0..1 MS and
    childKnowsTimingAndDosage 0..1 MS and
    childReceivesCaregiverSupport 0..1 MS and
    caregiversUnderstandARTAdvantages 0..1 MS and
    caregiversPreparedToStart 0..1 MS and
    patientReadyToStartRDT 0..1 MS and
    whoWillDisclose 0..1 MS and
    whereDisclosureTakePlace 0..1 MS and
    proposedDisclosureDate 0..1 MS
* extension[caregiverConsent].value[x] only CodeableConcept
* extension[caregiverConsent].valueCodeableConcept from $v2-0136-vs (required)
* extension[caregiverConsent] ^short = "Caregiver Consent for Diagnostic Disclosure (DE75)"
* extension[disclosureStatus].value[x] only CodeableConcept
* extension[disclosureStatus].valueCodeableConcept from SISRMEDisclosureStatusVS (required)
* extension[childKnowsNameAndCaregivers].value[x] only boolean
* extension[childManagesHygieneIndependently].value[x] only boolean
* extension[childExplainsMedicationImportance].value[x] only boolean
* extension[childKnowsTimingAndDosage].value[x] only boolean
* extension[childReceivesCaregiverSupport].value[x] only boolean
* extension[caregiversUnderstandARTAdvantages].value[x] only boolean
* extension[caregiversPreparedToStart].value[x] only boolean
* extension[caregiversPreparedToStart] ^short = "1st and 2nd Caregivers Prepared to Start (DE83)"
* extension[patientReadyToStartRDT].value[x] only boolean
* extension[whoWillDisclose].value[x] only string
* extension[whereDisclosureTakePlace].value[x] only string
* extension[proposedDisclosureDate].value[x] only date

Extension: SISRMEKeyPopulation
Id: sisrme-key-population
Title: "Key Population"
Description: "Key population group membership and related prevention services (MISAU.C.DE88-90)."
Context: Encounter
* ^experimental = true
* extension contains
    group 0..1 MS and
    state 0..1 MS and
    offeredLubricantsAndCondoms 0..1 MS
* extension[group].value[x] only CodeableConcept
* extension[group].valueCodeableConcept from SISRMEKeyPopulationGroupVS (extensible)
* extension[state].value[x] only string
* extension[offeredLubricantsAndCondoms].value[x] only boolean

Extension: SISRMEPreventionPackage
Id: sisrme-prevention-package
Title: "Prevention with Positives (PP) Package"
Description: "Completion of the 7-topic Prevention with Positives counseling package (MISAU.C.DE91-97)."
Context: Encounter
* ^experimental = true
* extension contains
    sexualBehaviourAndSafeSex 0..1 MS and
    serostatusDisclosureToPartner 0..1 MS and
    importanceOfAdherence 0..1 MS and
    sexuallyTransmittedInfections 0..1 MS and
    familyPlanningAndSafePregnancy 0..1 MS and
    alcoholAndDrugUse 0..1 MS and
    referralToCommunitySupport 0..1 MS
* extension[sexualBehaviourAndSafeSex].value[x] only boolean
* extension[sexualBehaviourAndSafeSex] ^short = "PP1 - Sexual Behaviour & Safe Sex/Condom use (DE91)"
* extension[serostatusDisclosureToPartner].value[x] only boolean
* extension[serostatusDisclosureToPartner] ^short = "PP2 - Serostatus Disclosure to Partner (DE92)"
* extension[importanceOfAdherence].value[x] only boolean
* extension[importanceOfAdherence] ^short = "PP3 - Importance of Adherence to Pre-ART/ART (DE93)"
* extension[sexuallyTransmittedInfections].value[x] only boolean
* extension[sexuallyTransmittedInfections] ^short = "PP4 - Sexually Transmitted Infections (DE94)"
* extension[familyPlanningAndSafePregnancy].value[x] only boolean
* extension[familyPlanningAndSafePregnancy] ^short = "PP5 - Family Planning, Safe Pregnancy (DE95)"
* extension[alcoholAndDrugUse].value[x] only boolean
* extension[alcoholAndDrugUse] ^short = "PP6 - Alcohol and Other Drug Use (DE96)"
* extension[referralToCommunitySupport].value[x] only boolean
* extension[referralToCommunitySupport] ^short = "PP7 - Referral to Community Support Services (DE97)"

Extension: SISRMESerostatusDisclosure
Id: sisrme-serostatus-disclosure
Title: "Serostatus Disclosure to Others"
Description: "Whether the patient has disclosed their HIV status to others, and follow-up contact testing (MISAU.C.DE98-100)."
Context: Encounter
* ^experimental = true
* extension contains
    disclosedToAnyone 0..1 MS and
    kinshipOfPersonDisclosedTo 0..1 MS and
    allContactsWithUnknownSerostatusTested 0..1 MS
* extension[disclosedToAnyone].value[x] only boolean
* extension[kinshipOfPersonDisclosedTo].value[x] only CodeableConcept
* extension[kinshipOfPersonDisclosedTo].valueCodeableConcept from SISRMEIndexContactKinshipVS (extensible)
* extension[kinshipOfPersonDisclosedTo] ^short = "Kinship of Person Disclosed To (DE99); modeled as coded rather than boolean as labeled in the source dictionary, since kinship is inherently categorical"
* extension[allContactsWithUnknownSerostatusTested].value[x] only boolean

Extension: SISRMEAdherenceSupport
Id: sisrme-adherence-support
Title: "ARV Adherence Support"
Description: "Details of who supports ARV administration and an assessment of adherence (MISAU.C.DE101-DE112)."
Context: Encounter
* ^experimental = true
* extension contains
    administrator 0..1 MS and
    administratorKinship 0..1 MS and
    dosesForgottenLast2Weeks 0..1 MS and
    classification 0..1 MS and
    adherencePercentage 0..1 MS and
    delayInAppointmentsDays 0..1 MS and
    delayInARVCollectionDays 0..1 MS and
    followingAdherencePlan 0..1 MS and
    canServiceBeImproved 0..1 MS and
    improvementSuggestions 0..1 MS and
    amaReason 0..1 MS and
    adherencePlan 0..1 MS
* extension[administrator].value[x] only CodeableConcept
* extension[administrator].valueCodeableConcept from SISRMEARVAdministratorVS (required)
* extension[administrator] ^short = "Who Administers ARVs? (DE101)"
* extension[administratorKinship].value[x] only CodeableConcept
* extension[administratorKinship].valueCodeableConcept from SISRMEIndexContactKinshipVS (extensible)
* extension[dosesForgottenLast2Weeks].value[x] only integer
* extension[classification].value[x] only CodeableConcept
* extension[classification].valueCodeableConcept from SISRMEAdherenceClassificationVS (required)
* extension[classification] ^short = "Adherence Assessment Classification (DE104)"
* extension[adherencePercentage].value[x] only decimal
* extension[delayInAppointmentsDays].value[x] only integer
* extension[delayInARVCollectionDays].value[x] only integer
* extension[followingAdherencePlan].value[x] only CodeableConcept
* extension[followingAdherencePlan].valueCodeableConcept from $v2-0136-vs (required)
* extension[canServiceBeImproved].value[x] only CodeableConcept
* extension[canServiceBeImproved].valueCodeableConcept from $v2-0136-vs (required)
* extension[improvementSuggestions].value[x] only string
* extension[amaReason].value[x] only string
* extension[amaReason] ^short = "Reason for leaving Against Medical Advice (DE111)"
* extension[adherencePlan].value[x] only string

Extension: SISRMESupportGroupParticipation
Id: sisrme-support-group-participation
Title: "Support Group Participation"
Description: "Peer/community support group(s) the patient participates in (MISAU.C.DE113-119)."
Context: Encounter
* ^experimental = true
* extension contains
    groupType 0..1 MS and
    otherSpecify 0..1 MS
* extension[groupType].value[x] only CodeableConcept
* extension[groupType].valueCodeableConcept from SISRMESupportGroupTypeVS (required)
* extension[otherSpecify].value[x] only string

Extension: SISRMETreatmentFailureReview
Id: sisrme-treatment-failure-review
Title: "Treatment Failure Review"
Description: "Review of suspected therapeutic failure and any resulting therapeutic committee decision (MISAU.C.DE119-DE124)."
Context: Encounter
* ^experimental = true
* extension contains
    suspectedFailure 0..1 MS and
    committeeSubmissionId 0..1 MS and
    committeeApprovalDate 0..1 MS and
    lineChanged 0..1 MS and
    reason 0..1 MS and
    reasonOther 0..1 MS
* extension[suspectedFailure].value[x] only boolean
* extension[suspectedFailure] ^short = "Suspected Therapeutic Failure? (DE119)"
* extension[committeeSubmissionId].value[x] only string
* extension[committeeApprovalDate].value[x] only date
* extension[lineChanged].value[x] only boolean
* extension[lineChanged] ^short = "Alternative or Line Change (DE122)"
* extension[reason].value[x] only string
* extension[reasonOther].value[x] only string
