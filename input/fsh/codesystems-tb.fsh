// Local CodeSystems for MISAU.F (TB Module). The source data dictionary
// references many HL7 LOINC "Answer" (LA-) and "Part" (LP-) codes for
// individual options, but several are inconsistent (e.g. the same LOINC
// answer code LA7553-6 is listed against both "Initial Consultation" and
// "Follow up Consultation") or are LOINC Part codes, which are organizing
// codes for LOINC's internal hierarchy rather than valid answer codes for
// a clinical record. Given these data-quality concerns, local codes are
// used for TB-specific option lists; the two universal, unambiguous LOINC
// answer codes for Yes/No (LA33-6 / LA32-8) are reused directly where a
// plain yes/no answer is called for via $v2-0136-vs, consistent with the
// rest of this IG.

CodeSystem: SISRMETBConsultationType
Id: sisrme-tb-consultation-type
Title: "SIS-RME TB Consultation Type"
Description: "Type of TB consultation (MISAU.TB.DE.1-3)."
* ^experimental = true
* ^caseSensitive = true
* #initial "Initial Consultation"
* #follow-up "Follow up Consultation"

CodeSystem: SISRMETBSymptom
Id: sisrme-tb-symptom
Title: "SIS-RME TB Symptom"
Description: "TB symptom screening options (MISAU.TB.DE.8-15)."
* ^experimental = true
* ^caseSensitive = true
* #fever "Fever"
* #weight-loss "Weight loss"
* #night-sweats "Night Sweats"
* #cough-2-weeks "Cough lasting more than 2 weeks"
* #asthenia "Asthenia"
* #contact-with-tb "Contact with TB"
* #painless-cervical-lymphadenopathy "Painless Cervical Lymphadenopathy"

CodeSystem: SISRMETBType
Id: sisrme-tb-type
Title: "SIS-RME Type of TB"
Description: "Drug sensitivity classification of a TB case (MISAU.TB.DE.30, DE.54-56)."
* ^experimental = true
* ^caseSensitive = true
* #sensitive "Sensitive"
* #resistant "Resistant"

CodeSystem: SISRMETBCaseState
Id: sisrme-tb-case-state
Title: "SIS-RME TB Case State/Outcome"
Description: "Consolidated set of TB case lifecycle states and treatment outcomes (MISAU.TB.DE.33-41, the follow-up-consultation Treatment Outcome DE.189-195, and the general list of TB users). The 'TB State' and 'Treatment Outcome' tables in the source dictionary enumerate the same underlying concepts and are consolidated into one code system."
* ^experimental = true
* ^caseSensitive = true
* #active "Active TB"
* #active-follow-up "Active TB Follow-up"
* #cured "Cured"
* #complete-treatment "Complete Treatment / Treatment Completed"
* #death "Death"
* #treatment-failure "Treatment Failure"
* #loss-to-follow-up "Loss of Follow-up"
* #not-evaluated "Not Evaluated"

CodeSystem: SISRMETBMonitoringLocation
Id: sisrme-tb-monitoring-location
Title: "SIS-RME TB Medication Monitoring Location"
Description: "Location/person at which directly observed TB medication intake is monitored (MISAU.TB.DE.42-48)."
* ^experimental = true
* ^caseSensitive = true
* #health-facility "Health Unit"
* #community-based "Community-based"
* #aps "Primary Health Care (APS)"
* #godmother "Godmother (Madrinha)"
* #godfather "Godfather (Padrinho)"
* #community-health-worker "Community Health Worker"

CodeSystem: SISRMETBRiskGroup
Id: sisrme-tb-risk-group
Title: "SIS-RME TB Risk Group"
Description: "Occupational/social risk groups relevant to TB (MISAU.TB.DE.59-68)."
* ^experimental = true
* ^caseSensitive = true
* #tb-contact "TB Contact"
* #health-worker "Health Worker (TS)"
* #miner "Miner"
* #former-miner "Former Miner"
* #exposed-to-silica "Exposed to Silica"
* #prisoner "Prisoner"
* #prison-officer "Prison Officer"
* #conglomerate-resident "Conglomerate Resident"
* #other "Other"

CodeSystem: SISRMETBRiskFactor
Id: sisrme-tb-risk-factor
Title: "SIS-RME TB Risk Factor"
Description: "Individual clinical/behavioral risk factors relevant to TB (MISAU.TB.DE.69-75)."
* ^experimental = true
* ^caseSensitive = true
* #hiv-positive "HIV Positive"
* #smoker "Smoker"
* #diabetes "Diabetes"
* #alcohol-consumption "Alcohol consumption"
* #illegal-drugs "Illegal Drugs"
* #other "Other"

CodeSystem: SISRMETBLocation
Id: sisrme-tb-location
Title: "SIS-RME TB Disease Location"
Description: "Anatomical categorization of the TB case (MISAU.TB.DE.76-80)."
* ^experimental = true
* ^caseSensitive = true
* #pulmonary-severe "Pulmonary, Severe"
* #pulmonary-non-severe "Pulmonary, Non-Severe"
* #extrapulmonary "Extrapulmonary"

CodeSystem: SISRMETBBacteriologicalStatus
Id: sisrme-tb-bacteriological-status
Title: "SIS-RME TB Diagnostic Basis"
Description: "Whether the TB case was bacteriologically confirmed or clinically diagnosed (MISAU.TB.DE.81-82)."
* ^experimental = true
* ^caseSensitive = true
* #bacteriologically-confirmed "Bacteriologically confirmed"
* #clinically-diagnosed "Clinically Diagnosed"

CodeSystem: SISRMETBPriorTreatmentCategory
Id: sisrme-tb-prior-treatment-category
Title: "SIS-RME TB Prior Treatment Category"
Description: "Registration category describing the patient's TB treatment history (MISAU.TB.DE.83-89)."
* ^experimental = true
* ^caseSensitive = true
* #new-case "New Case"
* #relapse "Relapse"
* #after-loss-to-follow-up "Treatment After Loss to Follow-up"
* #after-treatment-failure "Treatment After Treatment Failure"
* #previous-unknown "Previous Treatment Unknown"
* #other "Other"

CodeSystem: SISRMETBComorbidity
Id: sisrme-tb-comorbidity
Title: "SIS-RME TB Comorbidity"
Description: "Comorbid conditions recorded alongside a TB case (MISAU.TB.DE.98-106)."
* ^experimental = true
* ^caseSensitive = true
* #diabetes "Diabetes"
* #hypertension "Hypertension (HTN)"
* #liver-disease "Liver Disease"
* #kidney-disease "Kidney Disease"
* #mental-illness "Mental Illness"
* #epilepsy "Epilepsy"
* #malnutrition "Malnutrition"
* #other "Other"

CodeSystem: SISRMETBAdherenceRiskFactor
Id: sisrme-tb-adherence-risk-factor
Title: "SIS-RME TB Adherence Risk Factor"
Description: "Factors that may affect adherence to TB treatment, assessed during TB counseling (MISAU.TB.DE.151-167)."
* ^experimental = true
* ^caseSensitive = true
* #history-of-loss-to-follow-up "History of loss to follow-up"
* #substance-alcohol-abuse "Substance/alcohol abuse"
* #drug-intolerance "Drug intolerance"
* #signs-of-depression-anxiety "Signs of depression/anxiety"
* #lack-of-family-support "Lack of family support"
* #lack-of-food "Lack of food"
* #transport-problems "Transport problems"
* #lives-far-from-facility "Lives far from health facility"
* #unemployment-financial-constraints "Unemployment / financial constraints"
* #cultural-traditional-factors "Cultural or traditional factors"
* #stigma-discrimination "Stigma / discrimination"
* #feels-very-sick-tired "Feels very sick / tired"
* #does-not-believe-diagnosis "Does not believe diagnosis"
* #believes-cured "Believes cured"
* #too-many-pills "Too many pills"
* #fear-of-adverse-drug-reactions "Fear of adverse drug reactions"

CodeSystem: SISRMETBMentalHealthScreening
Id: sisrme-tb-mental-health-screening
Title: "SIS-RME TB Mental Health Screening Result"
Description: "Mental health screening outcome (MISAU.TB.DE.168-172)."
* ^experimental = true
* ^caseSensitive = true
* #no-mental-illness "No Mental Illness"
* #common-mental-disorder "Common Mental Disorder"
* #severe-mental-disorder "Severe Mental Disorder"

CodeSystem: SISRMETBSocialSupport
Id: sisrme-tb-social-support
Title: "SIS-RME TB Social Support"
Description: "Social support provided to a TB patient (MISAU.TB.DE.179-181)."
* ^experimental = true
* ^caseSensitive = true
* #food-basket "Food Basket"
* #social-incentive "Social Incentive"

CodeSystem: SISRMETBAdherenceAssessment
Id: sisrme-tb-adherence-assessment
Title: "SIS-RME TB Adherence Assessment"
Description: "Follow-up assessment of TB treatment adherence (MISAU.TB.DE.185-187)."
* ^experimental = true
* ^caseSensitive = true
* #good "Good (>= 80% of monthly doses taken)"
* #poor "Poor (< 80% of monthly doses taken)"

CodeSystem: SISRMELabTestPriority
Id: sisrme-lab-test-priority
Title: "SIS-RME Laboratory Test Priority"
Description: "Priority of a requested laboratory test (MISAU.TB.DE.127-129)."
* ^experimental = true
* ^caseSensitive = true
* #normal "Normal"
* #urgent "Urgent"
