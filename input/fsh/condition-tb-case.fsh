// Profile: SISRMETBCase
// Covers the case-level, longitudinal aspects of MISAU.F (TB Module):
// registration for the TB service, risk group/risk factor screening,
// TB characterization (location, bacteriological confirmation, prior
// treatment history), comorbidities, contact tracing summary, treatment
// regimen and the directly-observed medication intake log. Modeled as a
// Condition, since it represents the patient's TB diagnosis/case over
// time, distinct from an individual consultation visit (see
// SISRMETBConsultation for the per-visit clinical content).

Profile: SISRMETBCase
Parent: Condition
Id: sisrme-tb-case
Title: "SIS-RME TB Case"
Description: "A patient's tuberculosis case, per SIS-RME Data Dictionary module F (TB Module)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* clinicalStatus MS
* verificationStatus MS
* code 1..1 MS
* code from SISRMETBConditionCodeVS (extensible)
* code ^short = "Tuberculosis diagnosis; reuses ICD-10 chapter A15-A19 (Tuberculosis) where the location/confirmation basis is known"
* onsetDateTime 0..1 MS

* extension contains
    SISRMETBPresumptive named presumptive 0..1 MS and
    SISRMETBTypeExtension named tbType 0..1 MS and
    SISRMETBDetailedState named detailedState 0..1 MS and
    SISRMETBProvenanceRef named provenance 0..1 MS and
    SISRMETBRiskGroupMembership named riskGroup 0..* MS and
    SISRMETBRiskGroupOther named riskGroupOther 0..1 MS and
    SISRMETBRiskFactorPresent named riskFactor 0..* MS and
    SISRMETBRiskFactorOther named riskFactorOther 0..1 MS and
    SISRMETBDiseaseLocation named diseaseLocation 0..1 MS and
    SISRMETBBacteriologicalStatusExt named bacteriologicalStatus 0..1 MS and
    SISRMETBPriorTreatmentCategoryExt named priorTreatmentCategory 0..1 MS and
    SISRMETBPreviousTreatmentEpisode named previousTreatmentEpisode 0..* MS and
    SISRMETBComorbidityRecord named comorbidity 0..* MS and
    SISRMETBContactTracingSummary named contactTracingSummary 0..1 MS and
    SISRMETBTreatmentRegimen named treatmentRegimen 0..1 MS and
    SISRMETBMedicationIntake named medicationIntake 0..* MS

* extension[presumptive] ^short = "Presumptive (DE.27)"
* extension[tbType] ^short = "Type of TB: sensitive/resistant (DE.30, DE.54-56)"
* extension[detailedState] ^short = "TB State (DE.33-41) / Treatment Outcome (DE.188-195)"
* extension[provenance] ^short = "Provenance (DE.50-53)"
* extension[riskGroup] ^short = "Risk Group (DE.59-67)"
* extension[riskGroupOther] ^short = "Risk Group, Specify Other (DE.68)"
* extension[riskFactor] ^short = "Risk Factors (DE.69-74)"
* extension[riskFactorOther] ^short = "Risk Factors, Specify Other (DE.75)"
* extension[diseaseLocation] ^short = "Location of TB: Pulmonary/Extrapulmonary (DE.76-80)"
* extension[bacteriologicalStatus] ^short = "Bacteriological Confirmation (DE.81-82)"
* extension[priorTreatmentCategory] ^short = "Prior Treatment of TB (DE.83-89)"
* extension[previousTreatmentEpisode] ^short = "Previous Treatment History (DE.90-97)"
* extension[comorbidity] ^short = "Comorbidities: HIV, diabetes, etc. (DE.98-109)"
* extension[contactTracingSummary] ^short = "Contact Tracing/Family Member Tracing summary (DE.16-23)"
* extension[treatmentRegimen] ^short = "Registration for the TB Service: Treatment Regimen (DE.57-58)"
* extension[medicationIntake] ^short = "Medication intake monitoring log (DE.42-49)"

ValueSet: SISRMETBConditionCodeVS
Id: sisrme-tb-condition-code-vs
Title: "SIS-RME TB Condition Code"
Description: "Tuberculosis diagnosis codes, reusing the ICD-10 Tuberculosis chapter (A15-A19) 3-character category codes. A15 (respiratory TB, bacteriologically/histologically confirmed) is cited directly in the source data dictionary for MISAU.TB.DE.81 (Bacteriologically confirmed). Enumerated directly rather than via an is-a hierarchy filter, since ICD-10 subsumption/expansion support is not reliably available from public FHIR terminology servers (ICD-10 content is licensed by WHO); implementers needing full 4th/5th-character specificity should bind to a locally-loaded ICD-10 code system instead."
* ^experimental = true
* $ICD10#A15 "Respiratory tuberculosis, bacteriologically and histologically confirmed"
* $ICD10#A16 "Respiratory tuberculosis, not confirmed bacteriologically or histologically"
* $ICD10#A17 "Tuberculosis of nervous system"
* $ICD10#A18 "Tuberculosis of other organs"
* $ICD10#A19 "Miliary tuberculosis"

Instance: TBCaseExample
InstanceOf: SISRMETBCase
Title: "Example: SIS-RME TB Case"
Description: "An example new, bacteriologically confirmed, drug-sensitive pulmonary TB case for the example patient, currently on treatment."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = $ICD10#A15.0 "Tuberculosis of lung, confirmed by sputum microscopy with or without culture"
* onsetDateTime = "2026-05-20"
* extension[presumptive].valueCodeableConcept = $v2-0532#N "No"
* extension[tbType].valueCodeableConcept = SISRMETBType#sensitive "Sensitive"
* extension[detailedState].valueCodeableConcept = SISRMETBCaseState#active "Active TB"
* extension[provenance].valueCodeableConcept = SISRMETBProvenance#same-health-unit "Same Health Unit (internal detection)"
* extension[riskFactor][0].valueCodeableConcept = SISRMETBRiskFactor#hiv-positive "HIV Positive"
* extension[diseaseLocation].extension[category].valueCodeableConcept = SISRMETBLocation#pulmonary-non-severe "Pulmonary, Non-Severe"
* extension[bacteriologicalStatus].valueCodeableConcept = SISRMETBBacteriologicalStatus#bacteriologically-confirmed "Bacteriologically confirmed"
* extension[priorTreatmentCategory].extension[category].valueCodeableConcept = SISRMETBPriorTreatmentCategory#new-case "New Case"
* extension[treatmentRegimen].extension[regimen].valueString = "Rifampicin (R) + Isoniazid (H) + Ethambutol (E) + Pyrazinamide (Z)"
* extension[treatmentRegimen].extension[durationMonths].valueInteger = 6
* extension[treatmentRegimen].extension[startDate].valueDate = "2026-05-22"
* extension[contactTracingSummary].extension[contactsUnder5].valueInteger = 1
* extension[contactTracingSummary].extension[contacts5to14].valueInteger = 2
* extension[contactTracingSummary].extension[contacts15Plus].valueInteger = 3
* extension[contactTracingSummary].extension[contactsTraced].valueInteger = 6
* extension[contactTracingSummary].extension[contactsInitiatedTPT].valueInteger = 4
