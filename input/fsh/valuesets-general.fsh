// ValueSets for MISAU.G (General Module).

ValueSet: SISRMETriagePriorityVS
Id: sisrme-triage-priority-vs
Title: "SIS-RME Triage Priority Level Value Set"
Description: "Triage priority level assigned at appointment scheduling/admission (MISAU.G.DE8-13)."
* ^experimental = true
* include codes from system SISRMETriagePriority

ValueSet: SISRMEExemptionReasonVS
Id: sisrme-exemption-reason-vs
Title: "SIS-RME Reason for Fee Exemption Value Set"
Description: "Reason a patient is exempt from consultation fees (MISAU.G.DE25-35)."
* ^experimental = true
* include codes from system SISRMEExemptionReason

ValueSet: SISRMEGeneralVisitStatusVS
Id: sisrme-general-visit-status-vs
Title: "SIS-RME General Module Visit Status Value Set"
Description: "A patient's status within a scheduled visit (MISAU.G.DE40 and options)."
* ^experimental = true
* include codes from system SISRMEGeneralVisitStatus

ValueSet: SISRMEAppointmentRemovalReasonVS
Id: sisrme-appointment-removal-reason-vs
Title: "SIS-RME Appointment Removal Reason Value Set"
Description: "Reason an appointment was removed from the schedule (MISAU.G.DE41-44)."
* ^experimental = true
* include codes from system SISRMEAppointmentRemovalReason

ValueSet: SISRMEAllergySeverityVS
Id: sisrme-allergy-severity-vs
Title: "SIS-RME Allergy Severity Value Set"
Description: "Severity of an allergic reaction (MISAU.G.DE66)."
* ^experimental = true
* include codes from system SISRMEAllergySeverity

ValueSet: SISRMEPainTypeVS
Id: sisrme-pain-type-vs
Title: "SIS-RME Type of Pain Value Set"
Description: "Type of pain reported (MISAU.G.DE194-197)."
* ^experimental = true
* include codes from system SISRMEPainType

ValueSet: SISRMEPupilResponseToLightVS
Id: sisrme-pupil-response-to-light-vs
Title: "SIS-RME Pupil Response to Light Value Set"
Description: "Pupillary light reflex assessment (MISAU.G.DE208-211)."
* ^experimental = true
* include codes from system SISRMEPupilResponseToLight

ValueSet: SISRMEMuscleStrengthClassificationVS
Id: sisrme-muscle-strength-classification-vs
Title: "SIS-RME Muscle Strength Classification Value Set"
Description: "Muscle strength grading (MISAU.G.DE212-217)."
* ^experimental = true
* include codes from system SISRMEMuscleStrengthClassification

ValueSet: SISRMEMeningealSignVS
Id: sisrme-meningeal-sign-vs
Title: "SIS-RME Meningeal Sign Value Set"
Description: "Meningeal signs on examination (MISAU.G.DE219-222)."
* ^experimental = true
* include codes from system SISRMEMeningealSign

ValueSet: SISRMEClinicalEvolutionVS
Id: sisrme-clinical-evolution-vs
Title: "SIS-RME Clinical Evolution Value Set"
Description: "Clinical evolution/course of the patient during the consultation or admission (MISAU.G.DE232)."
* ^experimental = true
* include codes from system SISRMEClinicalEvolution

ValueSet: SISRMESideEffectTypeVS
Id: sisrme-side-effect-type-vs
Title: "SIS-RME Medication Side Effect Type Value Set"
Description: "Type of medication side effect reported (MISAU.G.DE245)."
* ^experimental = true
* include codes from system SISRMESideEffectType

ValueSet: SISRMESideEffectDegreeVS
Id: sisrme-side-effect-degree-vs
Title: "SIS-RME Medication Side Effect Degree Value Set"
Description: "Severity grade of a medication side effect (MISAU.G.DE246)."
* ^experimental = true
* include codes from system SISRMESideEffectDegree

ValueSet: SISRMERapidTestResultVS
Id: sisrme-rapid-test-result-vs
Title: "SIS-RME Rapid Test Result Value Set"
Description: "Result of a point-of-care rapid diagnostic test (MISAU.G.DE276-281: Malaria, HIV, Syphilis, Pregnancy, Covid, Hepatitis B)."
* ^experimental = true
* include codes from system SISRMERapidTestResult

ValueSet: SISRMEDiagnosisTypeVS
Id: sisrme-diagnosis-type-vs
Title: "SIS-RME Type of Diagnosis Value Set"
Description: "Whether a diagnosis is provisional or confirmed (MISAU.G.DE284-286)."
* ^experimental = true
* include codes from system SISRMEDiagnosisType

ValueSet: SISRMETypeOfDischargeVS
Id: sisrme-type-of-discharge-vs
Title: "SIS-RME Type of Discharge Value Set"
Description: "Type/outcome of hospital discharge (MISAU.G.DE290-297)."
* ^experimental = true
* include codes from system SISRMETypeOfDischarge

ValueSet: SISRMEDischargeAutopsyTypeVS
Id: sisrme-discharge-autopsy-type-vs
Title: "SIS-RME Autopsy Type (high-risk death) Value Set"
Description: "Type of autopsy performed for a high-risk death (MISAU.G.DE299)."
* ^experimental = true
* include codes from system SISRMEDischargeAutopsyType

ValueSet: SISRMEOverallResultVS
Id: sisrme-overall-result-vs
Title: "SIS-RME Overall Result Value Set"
Description: "Overall clinical result at discharge (MISAU.G.DE300-305)."
* ^experimental = true
* include codes from system SISRMEOverallResult

ValueSet: SISRMETreatmentRequestStatusVS
Id: sisrme-treatment-request-status-vs
Title: "SIS-RME Treatment Request Status Value Set"
Description: "Status of a requested treatment (MISAU.G.DE290, DE294)."
* ^experimental = true
* include codes from system SISRMETreatmentRequestStatus

ValueSet: SISRMEAdmissionTypeVS
Id: sisrme-admission-type-vs
Title: "SIS-RME Admission Type Value Set"
Description: "Type of admission (MISAU.G.DE327)."
* ^experimental = true
* include codes from system SISRMEAdmissionType

ValueSet: SISRMEHIVTestResultSimpleVS
Id: sisrme-hiv-test-result-simple-vs
Title: "SIS-RME HIV Test Result (simple) Value Set"
Description: "A simple positive/negative HIV test result (MISAU.G.DE313, DE318), distinct from the richer SISRMEIndexContactHIVStatus value set used elsewhere in this IG where the source dictionary itself only offers a plain Positive/Negative choice."
* ^experimental = true
* include codes from system SISRMEHIVTestResultSimple

ValueSet: SISRMEHIVTestTypeGeneralVS
Id: sisrme-hiv-test-type-general-vs
Title: "SIS-RME HIV Test Type (General Module) Value Set"
Description: "Type of HIV test (MISAU.G.DE317)."
* ^experimental = true
* include codes from system SISRMEHIVTestTypeGeneral

ValueSet: SISRMEStadiumVS
Id: sisrme-stadium-vs
Title: "SIS-RME Diagnosis Stadium Value Set"
Description: "T/S staging value set for MISAU.G.DE288. SNOMED CT concept identifiers are reused exactly as supplied by the source data dictionary; they have not been independently re-verified against a SNOMED CT terminology server by this IG."
* ^experimental = true
* $SCT#165385 "T0S0"
* $SCT#233808 "T0S1"
* $SCT#165387 "T1S0"
* $SCT#165388 "T1S1"
