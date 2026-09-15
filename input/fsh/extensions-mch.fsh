// Extensions supporting SISRMEPrenatalConsultation, SISRMEPostnatalConsultation
// and SISRMEPediatricConsultation (all Encounter), for MISAU.D (MCH
// Module) data elements with no matching core FHIR element. Grouped by
// the source data dictionary's own clinical sections. Vitals/anthropometrics
// and GCS are modeled separately as SISRMEMCHVitalSign Observations.
// "Banner" fields (read-only summary redisplays of data captured
// elsewhere on the form) are not modeled, consistent with the treatment
// of MOZ.Registration's "Visit Information" menu items.

// ===================== Prenatal Consultation =====================

Extension: SISRMEPregnancyRegistration
Id: sisrme-pregnancy-registration
Title: "Pregnancy Registration"
Description: "Registration details for the current pregnancy (MISAU.D, Registration/Admission)."
Context: Encounter
* ^experimental = true
* extension contains
    lmp 0..1 MS and
    gestationalAgeWeeks 0..1 MS and
    edd 0..1 MS and
    firstborn 0..1 MS and
    partnerPresent 0..1 MS and
    artStartedThisVisit 0..1 MS and
    ctzAtEntrance 0..1 MS
* extension[lmp].value[x] only date
* extension[lmp] ^short = "LMP - Last Menstrual Period (DE7)"
* extension[gestationalAgeWeeks].value[x] only integer
* extension[edd].value[x] only date
* extension[edd] ^short = "EDD - Estimated Date of Delivery (DE9)"
* extension[firstborn].value[x] only boolean
* extension[partnerPresent].value[x] only boolean
* extension[artStartedThisVisit].value[x] only boolean
* extension[ctzAtEntrance].value[x] only boolean
* extension[ctzAtEntrance] ^short = "At CTZ (Cotrimoxazole), the Entrance? (DE20)"

Extension: SISRMEPreviousPregnancyHistory
Id: sisrme-previous-pregnancy-history
Title: "Previous Pregnancy History"
Description: "Details of the most recent previous pregnancy (MISAU.D, Obstetric History)."
Context: Encounter
* ^experimental = true
* extension contains
    year 0..1 MS and
    type 0..1 MS and
    hadHemorrhagicComplications 0..1 MS and
    manualRemovalOfPlacenta 0..1 MS and
    hadHighBPOrOedema 0..1 MS and
    hadSeizures 0..1 MS and
    outcome 0..1 MS and
    placeOfBirthInstitutional 0..1 MS and
    placeOfBirthProvince 0..1 MS and
    placeOfBirthDistrict 0..1 MS and
    placeOfBirthHealthUnit 0..1 MS and
    typeOfDelivery 0..1 MS and
    prematureBirth 0..1 MS and
    newbornWeightCategory 0..1 MS and
    newbornDiedFirstWeek 0..1 MS and
    comments 0..1 MS
* extension[year].value[x] only date
* extension[type].value[x] only string
* extension[hadHemorrhagicComplications].value[x] only boolean
* extension[manualRemovalOfPlacenta].value[x] only boolean
* extension[hadHighBPOrOedema].value[x] only boolean
* extension[hadSeizures].value[x] only boolean
* extension[outcome].value[x] only CodeableConcept
* extension[outcome].valueCodeableConcept from SISRMEPregnancyOutcomeVS (required)
* extension[placeOfBirthInstitutional].value[x] only boolean
* extension[placeOfBirthInstitutional] ^short = "true = Institutional; false = Out of hospital delivery"
* extension[placeOfBirthProvince].value[x] only CodeableConcept
* extension[placeOfBirthProvince].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[placeOfBirthDistrict].value[x] only CodeableConcept
* extension[placeOfBirthDistrict].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[placeOfBirthHealthUnit].value[x] only string
* extension[typeOfDelivery].value[x] only CodeableConcept
* extension[typeOfDelivery].valueCodeableConcept from SISRMEDeliveryTypeVS (required)
* extension[prematureBirth].value[x] only boolean
* extension[newbornWeightCategory].value[x] only CodeableConcept
* extension[newbornWeightCategory].valueCodeableConcept from SISRMENewbornWeightCategoryVS (required)
* extension[newbornDiedFirstWeek].value[x] only boolean
* extension[comments].value[x] only string

Extension: SISRMEObstetricSummary
Id: sisrme-obstetric-summary
Title: "Obstetric Summary (GPACE)"
Description: "Cumulative obstetric history summary (MISAU.D, Obstetric History)."
Context: Encounter
* ^experimental = true
* extension contains
    gravidity 0..1 MS and
    parity 0..1 MS and
    abortions 0..1 MS and
    caesareanSections 0..1 MS and
    liveBirths 0..1 MS and
    stillbirths 0..1 MS and
    currentlyAlive 0..1 MS and
    ectopicPregnancies 0..1 MS and
    dateOfLastDelivery 0..1 MS
* extension[gravidity].value[x] only integer
* extension[parity].value[x] only integer
* extension[abortions].value[x] only integer
* extension[caesareanSections].value[x] only integer
* extension[liveBirths].value[x] only integer
* extension[stillbirths].value[x] only integer
* extension[currentlyAlive].value[x] only integer
* extension[ectopicPregnancies].value[x] only integer
* extension[dateOfLastDelivery].value[x] only date

Extension: SISRMEPrenatalRiskFlagPresent
Id: sisrme-prenatal-risk-flag-present
Title: "Prenatal Risk Flag Present"
Description: "A risk factor identified during history-taking at prenatal consultation (MISAU.D, Obstetric History)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPrenatalRiskFlagVS (required)

Extension: SISRMEObstetricExamination
Id: sisrme-obstetric-examination
Title: "Obstetric Examination"
Description: "Findings from the obstetric physical examination (MISAU.D, Obstetric Examination). Uterine height and fetal heart rate are recorded as SISRMEMCHVitalSign Observations rather than here."
Context: Encounter
* ^experimental = true
* extension contains
    evaluationDate 0..1 MS and
    gestationalAgeAtExamWeeks 0..1 MS and
    fetalMovementsPerceived 0..1 MS and
    fetalPresentation 0..1 MS and
    oedemaPresent 0..1 MS and
    genitalUlcersPresent 0..1 MS and
    condylomaPresent 0..1 MS and
    cervicalLesionsPresent 0..1 MS and
    dischargePresent 0..1 MS and
    finding 0..* MS
* extension[evaluationDate].value[x] only date
* extension[gestationalAgeAtExamWeeks].value[x] only integer
* extension[fetalMovementsPerceived].value[x] only boolean
* extension[fetalPresentation].value[x] only CodeableConcept
* extension[fetalPresentation].valueCodeableConcept from SISRMEFetalPresentationVS (required)
* extension[oedemaPresent].value[x] only boolean
* extension[genitalUlcersPresent].value[x] only boolean
* extension[condylomaPresent].value[x] only boolean
* extension[cervicalLesionsPresent].value[x] only boolean
* extension[dischargePresent].value[x] only boolean
* extension[finding].value[x] only CodeableConcept
* extension[finding].valueCodeableConcept from SISRMEBodySiteFindingVS (required)
* extension[finding] ^short = "Oedema location, anterior region/breast findings, genital ulcer/condyloma location, cervical lesion type, discharge type (DE76-87)"

Extension: SISRMEPrenatalLabRequest
Id: sisrme-prenatal-lab-request
Title: "Prenatal Laboratory Request"
Description: "A laboratory test requested at prenatal consultation (MISAU.D, Laboratory Requests)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPrenatalLabTestVS (required)

Extension: SISRMEPrenatalLabResult
Id: sisrme-prenatal-lab-result
Title: "Prenatal HIV Test Results"
Description: "HIV test results at prenatal consultation, for the patient and partner (MISAU.D.DE97-99)."
Context: Encounter
* ^experimental = true
* extension contains
    rapidHIVResult 0..1 MS and
    partnerHIVResult 0..1 MS
* extension[rapidHIVResult].value[x] only CodeableConcept
* extension[rapidHIVResult].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (extensible)
* extension[partnerHIVResult].value[x] only CodeableConcept
* extension[partnerHIVResult].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (extensible)

Extension: SISRMEPrenatalProphylaxisPrescribed
Id: sisrme-prenatal-prophylaxis-prescribed
Title: "Prenatal Prophylaxis/Treatment Prescribed"
Description: "A prophylaxis/treatment medication prescribed at prenatal consultation (MISAU.D, Prophylaxis & treatment)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPrenatalProphylaxisVS (required)

Extension: SISRMEPreventionMeasures
Id: sisrme-prevention-measures
Title: "Prevention Measures"
Description: "Malaria prevention measures (MISAU.D, Prevention)."
Context: Encounter
* ^experimental = true
* extension contains
    mosquitoNetReceived 0..1 MS and
    sleptUnderNetPreviousNight 0..1 MS
* extension[mosquitoNetReceived].value[x] only boolean
* extension[sleptUnderNetPreviousNight].value[x] only boolean

Extension: SISRMEPrenatalAllergy
Id: sisrme-prenatal-allergy
Title: "Prenatal Allergy"
Description: "An allergy recorded at prenatal consultation (MISAU.D, Allergy)."
Context: Encounter
* ^experimental = true
* extension contains
    type 1..1 MS and
    otherSpecify 0..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from SISRMEAllergyTypeVS (required)
* extension[otherSpecify].value[x] only string

Extension: SISRMEPrenatalVaccination
Id: sisrme-prenatal-vaccination
Title: "Prenatal Vaccination"
Description: "A vaccine dose administered during pregnancy (MISAU.D, Vaccination)."
Context: Encounter
* ^experimental = true
* extension contains
    vaccine 1..1 MS and
    doseNumber 0..1 MS and
    doseDate 0..1 MS
* extension[vaccine].value[x] only CodeableConcept
* extension[vaccine].valueCodeableConcept from SISRMEPrenatalVaccineVS (required)
* extension[doseNumber].value[x] only CodeableConcept
* extension[doseNumber].valueCodeableConcept from SISRMEVaccineDoseNumberVS (required)
* extension[doseDate].value[x] only date

// ===================== Postnatal Consultation =====================

Extension: SISRMEMaternalPostpartumAssessment
Id: sisrme-maternal-postpartum-assessment
Title: "Maternal Postpartum Assessment"
Description: "Overall postpartum diagnosis and breastfeeding/nutrition status of the mother (MISAU.D, Postnatal Consultation)."
Context: Encounter
* ^experimental = true
* extension contains
    postpartumDiagnosis 0..1 MS and
    otherPathologies 0..1 MS and
    receivedNutritionalSupplements 0..1 MS and
    currentlyBreastfeeding 0..1 MS and
    breastfeedingType 0..1 MS and
    transferredWithAcuteMalnutrition 0..1 MS
* extension[postpartumDiagnosis].value[x] only string
* extension[otherPathologies].value[x] only string
* extension[receivedNutritionalSupplements].value[x] only boolean
* extension[currentlyBreastfeeding].value[x] only boolean
* extension[breastfeedingType].value[x] only CodeableConcept
* extension[breastfeedingType].valueCodeableConcept from SISRMEBreastfeedingTypeVS (required)
* extension[transferredWithAcuteMalnutrition].value[x] only boolean

Extension: SISRMEPostpartumMalariaAssessment
Id: sisrme-postpartum-malaria-assessment
Title: "Postpartum Malaria Assessment"
Description: "Malaria screening and diagnosis at postnatal consultation (MISAU.D.DE82-84)."
Context: Encounter
* ^experimental = true
* extension contains
    symptomsSuggestive 0..1 MS and
    rdtRequested 0..1 MS and
    diagnosis 0..1 MS
* extension[symptomsSuggestive].value[x] only boolean
* extension[rdtRequested].value[x] only boolean
* extension[diagnosis].value[x] only CodeableConcept
* extension[diagnosis].valueCodeableConcept from SISRMEMalariaConditionVS (extensible)

Extension: SISRMEPostpartumSyphilisAssessment
Id: sisrme-postpartum-syphilis-assessment
Title: "Postpartum Syphilis Assessment"
Description: "Syphilis screening and diagnosis at postnatal consultation (MISAU.D.DE85-89)."
Context: Encounter
* ^experimental = true
* extension contains
    statusAtAdmission 0..1 MS and
    screeningPerformed 0..1 MS and
    rapidTestRequested 0..1 MS and
    diagnosis 0..1 MS and
    partnerReceivedTreatment 0..1 MS
* extension[statusAtAdmission].value[x] only CodeableConcept
* extension[statusAtAdmission].valueCodeableConcept from SISRMESyphilisStatusVS (required)
* extension[screeningPerformed].value[x] only boolean
* extension[rapidTestRequested].value[x] only boolean
* extension[diagnosis].value[x] only CodeableConcept
* extension[diagnosis].valueCodeableConcept from SISRMESyphilisConditionVS (extensible)
* extension[partnerReceivedTreatment].value[x] only boolean

Extension: SISRMEPostpartumHIVAssessment
Id: sisrme-postpartum-hiv-assessment
Title: "Postpartum HIV Assessment"
Description: "HIV status, ART and screening assessment at postnatal consultation, for the mother and partner (MISAU.D.DE90-96)."
Context: Encounter
* ^experimental = true
* extension contains
    seroStatusAtAdmission 0..1 MS and
    onARTAtEntryOtherFacility 0..1 MS and
    onARTThisFacility 0..1 MS and
    screeningPerformed 0..1 MS and
    screeningResult 0..1 MS and
    partnerResult 0..1 MS and
    interestedInPrEP 0..1 MS
* extension[seroStatusAtAdmission].value[x] only CodeableConcept
* extension[seroStatusAtAdmission].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (extensible)
* extension[onARTAtEntryOtherFacility].value[x] only boolean
* extension[onARTThisFacility].value[x] only boolean
* extension[screeningPerformed].value[x] only boolean
* extension[screeningResult].value[x] only CodeableConcept
* extension[screeningResult].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (extensible)
* extension[partnerResult].value[x] only CodeableConcept
* extension[partnerResult].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (extensible)
* extension[interestedInPrEP].value[x] only boolean

Extension: SISRMEPostpartumTBAssessment
Id: sisrme-postpartum-tb-assessment
Title: "Postpartum TB Assessment"
Description: "TB screening and diagnosis at postnatal consultation (MISAU.D.DE97-98)."
Context: Encounter
* ^experimental = true
* extension contains
    screeningPerformed 0..1 MS and
    diagnosis 0..1 MS
* extension[screeningPerformed].value[x] only boolean
* extension[diagnosis].value[x] only CodeableConcept
* extension[diagnosis].valueCodeableConcept from SISRMETBConditionCodeVS (extensible)

Extension: SISRMEPostpartumFamilyPlanning
Id: sisrme-postpartum-family-planning
Title: "Postpartum Family Planning"
Description: "Family planning counselling and method initiated at postnatal consultation (MISAU.D.DE99-101), reusing the family planning method value set defined for MISAU.C (HIV Module)."
Context: Encounter
* ^experimental = true
* extension contains
    counsellingPerformed 0..1 MS and
    methodInitiated 0..1 MS and
    otherDescription 0..1 MS
* extension[counsellingPerformed].value[x] only boolean
* extension[methodInitiated].value[x] only CodeableConcept
* extension[methodInitiated].valueCodeableConcept from SISRMEFamilyPlanningMethodVS (extensible)
* extension[otherDescription].value[x] only string

Extension: SISRMEPostpartumLabAndTreatmentSummary
Id: sisrme-postpartum-lab-and-treatment-summary
Title: "Postpartum Laboratory and Treatment Summary"
Description: "Laboratory tests requested and treatment/observations at postnatal consultation (MISAU.D.DE102-105)."
Context: Encounter
* ^experimental = true
* extension contains
    labTestRequested 0..1 MS and
    treatmentPerformed 0..1 MS and
    observationsConductPlan 0..1 MS and
    transferredViaFistula 0..1 MS
* extension[labTestRequested].value[x] only string
* extension[treatmentPerformed].value[x] only string
* extension[observationsConductPlan].value[x] only string
* extension[transferredViaFistula].value[x] only boolean

Extension: SISRMEPostpartumMedicationPrescribed
Id: sisrme-postpartum-medication-prescribed
Title: "Postpartum Medication Prescribed"
Description: "A medication prescribed at postnatal consultation, for the mother (MISAU.D, Prescription)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPostpartumMedicationVS (required)

Extension: SISRMENewbornAssessment
Id: sisrme-newborn-assessment
Title: "Newborn Assessment"
Description: "Clinical assessment of the newborn recorded on the mother's postnatal consultation record (MISAU.D.DE146-160). Note: in a full implementation the newborn should be registered as their own SISRMEPatient with their own Encounter; this extension follows the source system's flat, single-form capture of both mother and newborn data on one postnatal visit record."
Context: Encounter
* ^experimental = true
* extension contains
    generalCondition 0..1 MS and
    newbornStatus 0..1 MS and
    dyspneaDescription 0..1 MS and
    skinColoration 0..1 MS and
    jaundicePresent 0..1 MS and
    suckingWell 0..1 MS and
    umbilicalStumpStatus 0..1 MS and
    irritability 0..1 MS and
    anteriorFontanelleStatus 0..1 MS and
    bowelOrUrinationProblems 0..1 MS and
    kmcAtHome 0..1 MS and
    congenitalMalformations 0..1 MS and
    congenitalMalformationDescription 0..1 MS and
    regionalExamFindings 0..1 MS and
    neurologicalExamFindings 0..1 MS
* extension[generalCondition].value[x] only string
* extension[newbornStatus].value[x] only CodeableConcept
* extension[newbornStatus].valueCodeableConcept from SISRMENewbornStatusVS (required)
* extension[dyspneaDescription].value[x] only string
* extension[skinColoration].value[x] only string
* extension[jaundicePresent].value[x] only boolean
* extension[suckingWell].value[x] only boolean
* extension[umbilicalStumpStatus].value[x] only string
* extension[irritability].value[x] only boolean
* extension[anteriorFontanelleStatus].value[x] only CodeableConcept
* extension[anteriorFontanelleStatus].valueCodeableConcept from SISRMEFontanelleStatusVS (required)
* extension[bowelOrUrinationProblems].value[x] only boolean
* extension[kmcAtHome].value[x] only boolean
* extension[kmcAtHome] ^short = "Performing Kangaroo Mother Care (KMC) at Home?"
* extension[congenitalMalformations].value[x] only boolean
* extension[congenitalMalformationDescription].value[x] only string
* extension[regionalExamFindings].value[x] only string
* extension[neurologicalExamFindings].value[x] only string

Extension: SISRMENewbornInfectionScreening
Id: sisrme-newborn-infection-screening
Title: "Newborn Infection Screening"
Description: "Congenital syphilis and TB exposure screening for the newborn (MISAU.D.DE161-168)."
Context: Encounter
* ^experimental = true
* extension contains
    syphilisScreeningPerformed 0..1 MS and
    congenitalSyphilis 0..1 MS and
    syphilisRapidTestRequested 0..1 MS and
    syphilisDiagnosis 0..1 MS and
    tbExposed 0..1 MS and
    tbScreeningPerformed 0..1 MS and
    onART 0..1 MS and
    onIPT 0..1 MS
* extension[syphilisScreeningPerformed].value[x] only boolean
* extension[congenitalSyphilis].value[x] only boolean
* extension[syphilisRapidTestRequested].value[x] only boolean
* extension[syphilisDiagnosis].value[x] only CodeableConcept
* extension[syphilisDiagnosis].valueCodeableConcept from SISRMESyphilisConditionVS (extensible)
* extension[tbExposed].value[x] only boolean
* extension[tbScreeningPerformed].value[x] only boolean
* extension[onART].value[x] only boolean
* extension[onART] ^short = "Newborn Receiving Antiretroviral Therapy (ART)?"
* extension[onIPT].value[x] only boolean
* extension[onIPT] ^short = "Newborn on Isoniazid Prophylaxis (IPT)?"

Extension: SISRMENewbornVaccination
Id: sisrme-newborn-vaccination
Title: "Newborn Vaccination"
Description: "BCG and OPV vaccination of the newborn (MISAU.D.DE169-173)."
Context: Encounter
* ^experimental = true
* extension contains
    bcgGiven 0..1 MS and
    bcgDate 0..1 MS and
    opvGiven 0..1 MS and
    opvDate 0..1 MS and
    otherVaccines 0..1 MS
* extension[bcgGiven].value[x] only boolean
* extension[bcgDate].value[x] only date
* extension[opvGiven].value[x] only boolean
* extension[opvDate].value[x] only date
* extension[otherVaccines].value[x] only string

Extension: SISRMENewbornLabAndConductPlan
Id: sisrme-newborn-lab-and-conduct-plan
Title: "Newborn Laboratory Request and Conduct Plan"
Description: "Laboratory tests requested for the newborn and observations/conduct plan (MISAU.D.DE174-175)."
Context: Encounter
* ^experimental = true
* extension contains
    labTestRequested 0..1 MS and
    observationsConductPlan 0..1 MS
* extension[labTestRequested].value[x] only string
* extension[observationsConductPlan].value[x] only string

Extension: SISRMENewbornMedicationPrescribed
Id: sisrme-newborn-medication-prescribed
Title: "Newborn Medication Prescribed"
Description: "A medication prescribed to the newborn (MISAU.D.DE176-180)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMENewbornMedicationVS (required)

// ===================== Pediatric Consultation =====================

Extension: SISRMEPastPathologicalHistory
Id: sisrme-past-pathological-history
Title: "Past Pathological History"
Description: "Past pathological/allergy history (MISAU.D.DE193-206)."
Context: Encounter
* ^experimental = true
* extension contains
    chronicDiseases 0..1 MS and
    medicationAllergies 0..1 MS and
    foodAllergies 0..1 MS and
    otherAllergies 0..1 MS and
    previousIllnesses 0..1 MS and
    familyHistory 0..1 MS
* extension[chronicDiseases].value[x] only boolean
* extension[medicationAllergies].value[x] only boolean
* extension[foodAllergies].value[x] only boolean
* extension[otherAllergies].value[x] only boolean
* extension[previousIllnesses].value[x] only string
* extension[familyHistory].value[x] only string

Extension: SISRMEPsychosocialHistory
Id: sisrme-psychosocial-history
Title: "Psychosocial History"
Description: "Household psychosocial history (MISAU.D.DE207-215)."
Context: Encounter
* ^experimental = true
* extension contains
    alcoholUseHousehold 0..1 MS and
    tobaccoUseHousehold 0..1 MS and
    previousTravelHistory 0..1 MS
* extension[alcoholUseHousehold].value[x] only boolean
* extension[tobaccoUseHousehold].value[x] only boolean
* extension[previousTravelHistory].value[x] only boolean

Extension: SISRMEPersonalPaediatricNeonatalHistory
Id: sisrme-personal-paediatric-neonatal-history
Title: "Personal Paediatric/Neonatal History"
Description: "Birth history, shown only for children under 2 years of age (MISAU.D.DE216-221)."
Context: Encounter
* ^experimental = true
* extension contains
    birthWeight 0..1 MS and
    gestationalAgeAtBirth 0..1 MS and
    deliveryType 0..1 MS and
    apgarScore 0..1 MS and
    neonatalComplications 0..1 MS
* extension[birthWeight].value[x] only Quantity
* extension[gestationalAgeAtBirth].value[x] only string
* extension[deliveryType].value[x] only string
* extension[apgarScore].value[x] only string
* extension[neonatalComplications].value[x] only string

Extension: SISRMEReviewOfSystems
Id: sisrme-review-of-systems
Title: "Review of Systems"
Description: "Free-text review of systems by body system (MISAU.D.DE232-239)."
Context: Encounter
* ^experimental = true
* extension contains
    general 0..1 MS and
    respiratoryAndCardiovascular 0..1 MS and
    gastrointestinal 0..1 MS and
    genitourinary 0..1 MS and
    nervousSystem 0..1 MS and
    haemolymphopoietic 0..1 MS and
    osteoMyoArticular 0..1 MS and
    endocrine 0..1 MS
* extension[general].value[x] only string
* extension[respiratoryAndCardiovascular].value[x] only string
* extension[gastrointestinal].value[x] only string
* extension[genitourinary].value[x] only string
* extension[nervousSystem].value[x] only string
* extension[haemolymphopoietic].value[x] only string
* extension[osteoMyoArticular].value[x] only string
* extension[endocrine].value[x] only string

Extension: SISRMEPediatricDangerSignPresent
Id: sisrme-pediatric-danger-sign-present
Title: "Paediatric General Danger Sign Present"
Description: "An IMCI general danger sign identified on examination (MISAU.D.DE242-246)."
Context: Encounter
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPediatricDangerSignVS (required)

Extension: SISRMEGeneralStateAndBiotype
Id: sisrme-general-state-and-biotype
Title: "General State and Biotype"
Description: "Overall clinical general state and constitutional body type (MISAU.D.DE266-274)."
Context: Encounter
* ^experimental = true
* extension contains
    generalState 0..1 MS and
    biotype 0..1 MS
* extension[generalState].value[x] only CodeableConcept
* extension[generalState].valueCodeableConcept from SISRMEGeneralStateDegreeVS (required)
* extension[biotype].value[x] only CodeableConcept
* extension[biotype].valueCodeableConcept from SISRMEBiotypeVS (required)

Extension: SISRMEPulseAssessment
Id: sisrme-pulse-assessment
Title: "Pulse Assessment (per site)"
Description: "A pulse assessment at one anatomical site, repeatable per site examined (MISAU.D.DE283-294)."
Context: Encounter
* ^experimental = true
* extension contains
    site 1..1 MS and
    rate 0..1 MS and
    rhythm 0..1 MS and
    amplitude 0..1 MS
* extension[site].value[x] only CodeableConcept
* extension[site].valueCodeableConcept from SISRMEPulseSiteVS (required)
* extension[rate].value[x] only integer
* extension[rhythm].value[x] only CodeableConcept
* extension[rhythm].valueCodeableConcept from SISRMEPulseRhythmVS (required)
* extension[amplitude].value[x] only string

Extension: SISRMERegionalPhysicalExam
Id: sisrme-regional-physical-exam
Title: "Regional Physical Examination"
Description: "Free-text physical examination findings by anatomical region (MISAU.D.DE297-305)."
Context: Encounter
* ^experimental = true
* extension contains
    skin 0..1 MS and
    mucousMembranes 0..1 MS and
    hair 0..1 MS and
    nails 0..1 MS and
    skullCranium 0..1 MS and
    scalpHair 0..1 MS and
    paranasalSinuses 0..1 MS and
    eyes 0..1 MS and
    ears 0..1 MS
* extension[skin].value[x] only string
* extension[mucousMembranes].value[x] only string
* extension[hair].value[x] only string
* extension[nails].value[x] only string
* extension[skullCranium].value[x] only string
* extension[scalpHair].value[x] only string
* extension[paranasalSinuses].value[x] only string
* extension[eyes].value[x] only string
* extension[ears].value[x] only string

Extension: SISRMEAbnormalMasses
Id: sisrme-abnormal-masses
Title: "Abnormal Masses"
Description: "Whether abnormal masses were found on examination, and details (MISAU.D.DE306-309)."
Context: Encounter
* ^experimental = true
* extension contains
    present 0..1 MS and
    details 0..1 MS
* extension[present].value[x] only boolean
* extension[details].value[x] only string

Extension: SISRMEDiseaseScreeningPediatric
Id: sisrme-disease-screening-pediatric
Title: "Paediatric Disease Screening"
Description: "HIV and TB screening performed during a paediatric consultation (MISAU.D.DE295-296), reusing the screening result value set defined for MISAU.C (HIV Module)."
Context: Encounter
* ^experimental = true
* extension contains
    hiv 0..1 MS and
    tb 0..1 MS
* extension[hiv].value[x] only CodeableConcept
* extension[hiv].valueCodeableConcept from SISRMEScreeningResultVS (extensible)
* extension[tb].value[x] only CodeableConcept
* extension[tb].valueCodeableConcept from SISRMEScreeningResultVS (extensible)
