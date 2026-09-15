// Profile: SISRMEDiagnosisRecord
// Covers MISAU.G "DIAGNOSIS": a diagnosis recorded during a consultation,
// with its type (provisional/confirmed) and, where applicable, a T/S
// staging classification.

Profile: SISRMEDiagnosisRecord
Parent: Condition
Id: sisrme-diagnosis-record
Title: "SIS-RME Diagnosis Record"
Description: "A diagnosis recorded during a consultation, per SIS-RME Data Dictionary module G (General Module, Diagnosis)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* encounter 0..1 MS
* recordedDate 0..1 MS
* recordedDate ^short = "Date and Time of Diagnosis (DE281)"
* code 1..1 MS
* code ^short = "Diagnosis (DE283); free coding, not bound to a fixed value set given the source dictionary's open-ended 'Predefined list'"
* verificationStatus 0..1 MS
* asserter 0..1 MS
* asserter ^short = "Clinician's Name (DE287), recorded as a display-only reference when no Practitioner resource is available"

* extension contains
    SISRMEDiagnosisTypeExt named diagnosisType 0..1 MS and
    SISRMEDiagnosisService named service 0..1 MS and
    SISRMEDiagnosisStadium named stadium 0..1 MS

* extension[diagnosisType] ^short = "Type of Diagnosis: Provisional/Confirmed (DE284-286)"
* extension[service] ^short = "Service (DE282)"
* extension[stadium] ^short = "Stadium (DE288)"

Instance: DiagnosisRecordExample
InstanceOf: SISRMEDiagnosisRecord
Title: "Example: SIS-RME Diagnosis Record"
Description: "An example confirmed diagnosis recorded for the example patient's general consultation."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* encounter = Reference(GeneralConsultationExample)
* recordedDate = "2026-06-15T08:30:00+02:00"
* code.text = "Tension-type headache"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* asserter.display = "Dr. Ines Sitoe"
* extension[diagnosisType].valueCodeableConcept = SISRMEDiagnosisType#confirmed "Confirmed"
* extension[service].valueString = "General Medicine"
