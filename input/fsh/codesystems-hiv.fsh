// Local CodeSystems for MISAU.C (HIV Module). Where the source data
// dictionary's Input Options map to a widely recognized international
// framework (e.g. WHO HIV clinical staging, PEPFAR key population
// categories), the MEANING is standardized even though no single global
// code system enumerates them as simple codes; local codes are used and
// documented accordingly. Numeric lab results (CD4, viral load) and
// anthropometrics (weight/height/BMI) are NOT modeled here - they reuse
// LOINC via SISRMEHIVVitalSign (Observation).

CodeSystem: SISRMEHIVTestType
Id: sisrme-hiv-test-type
Title: "SIS-RME HIV Test Type"
Description: "Type of HIV test performed (MISAU.C.DE2)."
* ^caseSensitive = true
* #rapid-test "Rapid test"
* #pcr "PCR"

CodeSystem: SISRMEPCRResult
Id: sisrme-pcr-result
Title: "SIS-RME PCR Result"
Description: "Result of a virologic (PCR) HIV test for early infant diagnosis (MISAU.C.DE6, DE8)."
* ^caseSensitive = true
* #positive "Positive"
* #negative "Negative"
* #indeterminate "Indeterminate"

CodeSystem: SISRMEDefinitiveDiagnosticCriteria
Id: sisrme-definitive-diagnostic-criteria
Title: "SIS-RME Definitive HIV Diagnostic Criteria"
Description: "The criteria used to establish a definitive HIV diagnosis (MISAU.C.DE10)."
* ^caseSensitive = true
* #positive-rapid-test "Positive rapid test"
* #positive-pcr "Positive PCR"
* #clinical-criteria "Clinical criteria"
* #other "Other"

CodeSystem: SISRMETPTRegimen
Id: sisrme-tpt-regimen
Title: "SIS-RME TPT (TB Preventive Therapy) Regimen"
Description: "Regimen used for TB preventive therapy (MISAU.C.DE23)."
* ^caseSensitive = true
* #3hp "3HP (weekly rifapentine + isoniazid, 3 months)"
* #6h "6H (daily isoniazid, 6 months)"
* #1hp "1HP (daily rifapentine + isoniazid, 1 month)"
* #other "Other"

CodeSystem: SISRMEWHOClinicalStage
Id: sisrme-who-clinical-stage
Title: "SIS-RME WHO HIV Clinical Stage"
Description: "WHO clinical staging of HIV disease (MISAU.C.DE18, DE56), used both at ART initiation and at the current visit."
* ^caseSensitive = true
* #stage-1 "WHO Clinical Stage 1"
* #stage-2 "WHO Clinical Stage 2"
* #stage-3 "WHO Clinical Stage 3"
* #stage-4 "WHO Clinical Stage 4"

CodeSystem: SISRMEScreeningResult
Id: sisrme-screening-result
Title: "SIS-RME Screening Result"
Description: "Outcome of a clinical screening performed during an HIV consultation (MISAU.C.DE36-40: STI, cervical cancer, diabetes, TB, hypertension screening)."
* ^caseSensitive = true
* #not-done "Not done"
* #negative "Negative/Not suspected"
* #positive "Positive/Suspected"
* #referred "Referred for further evaluation"

CodeSystem: SISRMEFamilyPlanningMethod
Id: sisrme-family-planning-method
Title: "SIS-RME Family Planning Method"
Description: "Family planning method in current use (MISAU.C.DE43-44)."
* ^caseSensitive = true
* #none "None"
* #condoms "Condoms"
* #oral-contraceptive "Oral contraceptive pill"
* #injectable "Injectable"
* #implant "Implant"
* #iud "Intrauterine device (IUD)"
* #tubal-ligation "Tubal ligation"
* #other "Other"

CodeSystem: SISRMEDSDState
Id: sisrme-dsd-state
Title: "SIS-RME Differentiated Service Delivery (MDS) State"
Description: "Enrollment state in a Differentiated Service Delivery Model (Modelo Diferenciado de Serviços) (MISAU.C.DE60)."
* ^caseSensitive = true
* #eligible-not-enrolled "Eligible, not yet enrolled"
* #enrolled "Enrolled"
* #not-eligible "Not eligible"

CodeSystem: SISRMEReasonForConsultation
Id: sisrme-reason-for-consultation
Title: "SIS-RME Reason for Consultation (APSS & PP)"
Description: "Reason for the APSS & PP (adherence and psychosocial support) consultation (MISAU.C.DE67)."
* ^caseSensitive = true
* #routine-visit "Normal/routine visit"
* #missed-appointment "Absent (missed appointment)"
* #other "Other"

CodeSystem: SISRMEDisclosureStatus
Id: sisrme-disclosure-status
Title: "SIS-RME Diagnostic Disclosure Status"
Description: "Status of HIV diagnosis disclosure, primarily for pediatric/adolescent patients (MISAU.C.DE76)."
* ^caseSensitive = true
* #no-disclosure "No disclosure has occurred"
* #partial-disclosure "Partial disclosure"
* #full-disclosure "Full disclosure"

CodeSystem: SISRMEKeyPopulationGroup
Id: sisrme-key-population-group
Title: "SIS-RME Key Population Group"
Description: "Key population group, per the standard PEPFAR/WHO key-population categories used in HIV programming (MISAU.C.DE88)."
* ^caseSensitive = true
* #sex-worker "Sex worker"
* #men-who-have-sex-with-men "Men who have sex with men"
* #people-who-inject-drugs "People who inject drugs"
* #transgender "Transgender person"
* #prisoner "Person in prison or other closed setting"
* #other "Other"

CodeSystem: SISRMEARVAdministrator
Id: sisrme-arv-administrator
Title: "SIS-RME ARV Administrator"
Description: "Who administers the patient's antiretroviral medication doses (MISAU.C.DE101)."
* ^caseSensitive = true
* #self "Self-administered"
* #caregiver "Caregiver"
* #other "Other"

CodeSystem: SISRMEAdherenceClassification
Id: sisrme-adherence-classification
Title: "SIS-RME ART Adherence Classification"
Description: "Overall classification of ART adherence (MISAU.C.DE104)."
* ^caseSensitive = true
* #good "Good"
* #fair "Fair"
* #poor "Poor"

CodeSystem: SISRMESupportGroupType
Id: sisrme-support-group-type
Title: "SIS-RME Support Group Type"
Description: "Peer/community support group(s) a patient participates in (MISAU.C.DE113-119)."
* ^caseSensitive = true
* #mother-to-mother "Mother-to-Mother Support Group (MPM)"
* #parents-caregivers "Parents and Caregivers Support Group"
* #disclosed-child-adolescent "Disclosed Child/Adolescent Support Group"
* #peer-education-mentor "Peer Education / Mentor Mother"
* #peer-education-adolescent "Peer Education / Adolescent"
* #champion-man "Champion Man (Homem Campeão)"
* #other "Other"

CodeSystem: SISRMERegimenLine
Id: sisrme-regimen-line
Title: "SIS-RME ART Regimen Line"
Description: "Which line of ART regimen a change/alternative applies to (MISAU.C, Alternative & Line Treatment section)."
* ^caseSensitive = true
* #first-line-alternative "1st Line Alternative"
* #second-line "2nd Line"
* #third-line "3rd Line"
