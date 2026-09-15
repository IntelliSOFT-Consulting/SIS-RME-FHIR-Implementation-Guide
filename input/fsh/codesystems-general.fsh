// Local CodeSystems for MISAU.G (General Module): Schedule Appointment,
// General Consultation, Diagnosis, Discharge, Request Treatment, Disease
// Screening, and Transfer Patient. This module is a generic/default
// consultation workflow that structurally mirrors sections already
// modeled for MISAU.C/D/F (allergies, family/psychosocial history,
// systems review, GCS, anthropometrics, pulse assessment, disease
// screening); those value sets and extensions are reused directly here
// rather than duplicated - see extensions-general.fsh.

CodeSystem: SISRMETriagePriority
Id: sisrme-triage-priority
Title: "SIS-RME Triage Priority Level"
Description: "Triage priority level assigned at appointment scheduling/admission (MISAU.G.DE8-13)."
* ^experimental = true
* ^caseSensitive = true
* #emergency "Emergency"
* #very-urgent "Very urgent"
* #urgent "Urgent"
* #not-urgent "Not urgent"
* #death "Death"

CodeSystem: SISRMEExemptionReason
Id: sisrme-exemption-reason
Title: "SIS-RME Reason for Fee Exemption"
Description: "Reason a patient is exempt from consultation fees (MISAU.G.DE25-35)."
* ^experimental = true
* ^caseSensitive = true
* #traffic-accident-24h "Traffic Accident within 24 hours"
* #physical-assault-24h "Physical assault up to 24 hours"
* #asthma-attack "Asthma attack"
* #grave "Grave"
* #former-combatant "Former Combatant"
* #blood-donor "Blood Donor"
* #public-employee-amm "Public Employee/AMM"
* #elderly "Elderly"
* #guide-bearer "Guide bearer"
* #newborn "Newborn (up to 28 days)"

CodeSystem: SISRMEGeneralVisitStatus
Id: sisrme-general-visit-status
Title: "SIS-RME General Module Visit Status"
Description: "A patient's status within a scheduled visit (MISAU.G.DE40 and options)."
* ^experimental = true
* ^caseSensitive = true
* #on-hold "On hold"
* #triaged "Triaged"
* #under-observation "Under Observation"
* #discharged "High (discharged)"
* #so "SO"
* #hospitalized "Hospitalized"
* #absent "Absent"
* #death "Death"
* #self-completion "Self-completion"

CodeSystem: SISRMEAppointmentRemovalReason
Id: sisrme-appointment-removal-reason
Title: "SIS-RME Appointment Removal Reason"
Description: "Reason an appointment was removed from the schedule (MISAU.G.DE41-44)."
* ^experimental = true
* ^caseSensitive = true
* #reschedule "Reschedule"
* #cancel "Cancel"
* #change-of-doctor "Change of doctors"

CodeSystem: SISRMEAllergySeverity
Id: sisrme-allergy-severity
Title: "SIS-RME Allergy Severity"
Description: "Severity of an allergic reaction (MISAU.G.DE66)."
* ^experimental = true
* ^caseSensitive = true
* #mild "Mild"
* #moderate "Moderate"
* #severe "Severe"

CodeSystem: SISRMEPainType
Id: sisrme-pain-type
Title: "SIS-RME Type of Pain"
Description: "Type of pain reported (MISAU.G.DE194-197)."
* ^experimental = true
* ^caseSensitive = true
* #neurological "Neurological"
* #musculoskeletal "Musculoskeletal"
* #neuropathic "Neuropathic"

CodeSystem: SISRMEPupilResponseToLight
Id: sisrme-pupil-response-to-light
Title: "SIS-RME Pupil Response to Light"
Description: "Pupillary light reflex assessment (MISAU.G.DE208-211)."
* ^experimental = true
* ^caseSensitive = true
* #light-reactive "Light-reactive"
* #not-very-reactive "Not very reactive"
* #non-reactive "Non-reactive"

CodeSystem: SISRMEMuscleStrengthClassification
Id: sisrme-muscle-strength-classification
Title: "SIS-RME Muscle Strength Classification"
Description: "Muscle strength grading (MISAU.G.DE212-217)."
* ^experimental = true
* ^caseSensitive = true
* #"1" "1 - No Movement"
* #"2" "2 - Weak"
* #"3" "3 - Regular"
* #"4" "4 - Good"
* #"5" "5 - Normal"

CodeSystem: SISRMEMeningealSign
Id: sisrme-meningeal-sign
Title: "SIS-RME Meningeal Sign"
Description: "Meningeal signs on examination (MISAU.G.DE219-222)."
* ^experimental = true
* ^caseSensitive = true
* #neck-stiffness "Neck Stiffness"
* #kernig "Sinal de Kernig (Kernig's sign)"
* #brudzinski "Sinal de Brudzinski (Brudzinski's sign)"

CodeSystem: SISRMEClinicalEvolution
Id: sisrme-clinical-evolution
Title: "SIS-RME Clinical Evolution"
Description: "Clinical evolution/course of the patient during the consultation or admission (MISAU.G.DE232)."
* ^experimental = true
* ^caseSensitive = true
* #improving "Improving"
* #stable "Stable"
* #worsening "Worsening"

CodeSystem: SISRMESideEffectType
Id: sisrme-side-effect-type
Title: "SIS-RME Medication Side Effect Type"
Description: "Type of medication side effect reported (MISAU.G.DE245)."
* ^experimental = true
* ^caseSensitive = true
* #abdominal-pain "Abdominal Pain"
* #nausea-vomiting "Nausea/Vomiting"
* #diarrhea "Diarrhea"
* #peripheral-neuropathy "Peripheral Neuropathy"
* #rash "Rash"
* #other "Other"

CodeSystem: SISRMESideEffectDegree
Id: sisrme-side-effect-degree
Title: "SIS-RME Medication Side Effect Degree"
Description: "Severity grade of a medication side effect (MISAU.G.DE246)."
* ^experimental = true
* ^caseSensitive = true
* #I "I - Light"
* #II "II - Moderate"
* #III "III - Severe"
* #IV "IV - Life-threatening"

CodeSystem: SISRMERapidTestResult
Id: sisrme-rapid-test-result
Title: "SIS-RME Rapid Test Result"
Description: "Result of a point-of-care rapid diagnostic test (MISAU.G.DE276-281: Malaria, HIV, Syphilis, Pregnancy, Covid, Hepatitis B)."
* ^experimental = true
* ^caseSensitive = true
* #positive "Positive"
* #negative "Negative"
* #invalid "Invalid"
* #undetermined "Undetermined"

CodeSystem: SISRMEDiagnosisType
Id: sisrme-diagnosis-type
Title: "SIS-RME Type of Diagnosis"
Description: "Whether a diagnosis is provisional or confirmed (MISAU.G.DE284-286)."
* ^experimental = true
* ^caseSensitive = true
* #provisional "Provisional"
* #confirmed "Confirmed"

CodeSystem: SISRMETypeOfDischarge
Id: sisrme-type-of-discharge
Title: "SIS-RME Type of Discharge"
Description: "Type/outcome of hospital discharge (MISAU.G.DE290-297)."
* ^experimental = true
* ^caseSensitive = true
* #continue-outpatient "Continue with outpatient consultations"
* #clinic-treatment-completed "Clinic with treatment completed"
* #abandonment "Abandonment"
* #upon-request "Upon request"
* #death "Death"
* #transfer "Transfer to another health unit"

CodeSystem: SISRMEDischargeAutopsyType
Id: sisrme-discharge-autopsy-type
Title: "SIS-RME Autopsy Type (high-risk death)"
Description: "Type of autopsy performed for a high-risk death (MISAU.G.DE299)."
* ^experimental = true
* ^caseSensitive = true
* #none "No autopsy"
* #anatomical-pathological "Anatomical-pathological autopsy"
* #medical-legal "Medical-legal autopsy"

CodeSystem: SISRMEOverallResult
Id: sisrme-overall-result
Title: "SIS-RME Overall Result"
Description: "Overall clinical result at discharge (MISAU.G.DE300-305)."
* ^experimental = true
* ^caseSensitive = true
* #cured "Cured"
* #improved "Improved"
* #stationary "Stationary"
* #worse "Worse"
* #undetermined "Undetermined"
* #no-disease "No disease"

CodeSystem: SISRMETreatmentRequestStatus
Id: sisrme-treatment-request-status
Title: "SIS-RME Treatment Request Status"
Description: "Status of a requested treatment (MISAU.G.DE290, DE294)."
* ^experimental = true
* ^caseSensitive = true
* #completed "Completed"
* #rejected "Rejected"
* #pending "Pending"

CodeSystem: SISRMEAdmissionType
Id: sisrme-admission-type
Title: "SIS-RME Admission Type"
Description: "Type of admission (MISAU.G.DE327)."
* ^experimental = true
* ^caseSensitive = true
* #inpatient "Inpatient"
* #outpatient "Outpatient"
* #programme "Programme"

CodeSystem: SISRMEHIVTestResultSimple
Id: sisrme-hiv-test-result-simple
Title: "SIS-RME HIV Test Result (simple)"
Description: "A simple positive/negative HIV test result (MISAU.G.DE313, DE318), distinct from the richer SISRMEIndexContactHIVStatus value set used elsewhere in this IG where the source dictionary itself only offers a plain Positive/Negative choice."
* ^experimental = true
* ^caseSensitive = true
* #positive "Positive"
* #negative "Negative"

CodeSystem: SISRMEHIVTestTypeGeneral
Id: sisrme-hiv-test-type-general
Title: "SIS-RME HIV Test Type (General Module)"
Description: "Type of HIV test (MISAU.G.DE317)."
* ^experimental = true
* ^caseSensitive = true
* #pcr "PCR"
* #rapid-test "Quick test"

CodeSystem: SISRMEStadium
Id: sisrme-stadium
Title: "SIS-RME Diagnosis Stadium"
Description: "A T/S staging classification for the diagnosis (MISAU.G.DE288). The source data dictionary supplies SNOMED CT concept identifiers directly alongside each label; those codes are reused as given in SISRMEStadiumVS rather than restated here. This local code system exists only to document the T/S labels themselves."
* ^experimental = true
* ^caseSensitive = true
* #T0S0 "T0S0"
* #T0S1 "T0S1"
* #T1S0 "T1S0"
* #T1S1 "T1S1"
