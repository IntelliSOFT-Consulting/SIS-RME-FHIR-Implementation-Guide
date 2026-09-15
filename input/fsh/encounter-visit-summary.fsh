// Profile: SISRMEVisitSummary
// Covers MOZ.Registration.DE.96-100 ("User Profile": attending clinician
// and visit/queue status) and DE.118-131 ("Visit History": consultation
// content and outcome) from the SIS-RME Data Dictionary module A
// (Registration).

Profile: SISRMEVisitSummary
Parent: Encounter
Id: sisrme-visit-summary
Title: "SIS-RME Visit Summary"
Description: "A summary of an outpatient visit/consultation as captured by the SIS-RME registration workflow."
* ^experimental = true

* status MS
* class MS
* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* period 0..1 MS
* period ^short = "Start Time and End Time (DE.118)"
* participant 0..1 MS
* participant.individual 0..1 MS
* participant.individual ^short = "Doctor (DE.96) / Clinician's Name (DE.120); recorded as a display-only reference when no Practitioner resource is available"
* reasonCode 0..1 MS
* reasonCode.text 0..1 MS
* reasonCode.text ^short = "Main complaint (DE.119)"

* extension contains
    SISRMEVisitStatus named visitStatus 0..1 MS and
    SISRMEConsultationOutcome named consultationOutcome 0..1 MS and
    SISRMEVisitNotes named visitNotes 0..1 MS and
    SISRMEDiagnosesSummary named diagnosesSummary 0..1 MS and
    SISRMEPrescriptionsSummary named prescriptionsSummary 0..1 MS and
    SISRMETestsSummary named testsSummary 0..1 MS and
    SISRMEMedicalHistorySummary named medicalHistorySummary 0..1 MS and
    SISRMEObjectiveExamSummary named objectiveExamSummary 0..1 MS and
    SISRMETreatmentsSummary named treatmentsSummary 0..1 MS

* extension[visitStatus] ^short = "User: is on a visit - On hold/triaged/under observation (DE.97-100)"
* extension[consultationOutcome] ^short = "Consultation outcome - Discharged/Transferred/Absent (DE.128-131)"
* extension[visitNotes] ^short = "More details (DE.121)"
* extension[diagnosesSummary] ^short = "Diagnoses Obtained (DE.122)"
* extension[prescriptionsSummary] ^short = "Prescriptions (DE.123)"
* extension[testsSummary] ^short = "Additional tests performed and their results (DE.124)"
* extension[medicalHistorySummary] ^short = "Information recorded regarding medical history (DE.125)"
* extension[objectiveExamSummary] ^short = "Information recorded about the objective exam (DE.126)"
* extension[treatmentsSummary] ^short = "Treatments Performed (DE.127)"

Instance: VisitSummaryExample
InstanceOf: SISRMEVisitSummary
Title: "Example: SIS-RME Visit Summary"
Description: "An example outpatient consultation visit for the example patient, from triage through discharge."
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(PatientRegistrationExample)
* period.start = "2026-06-15T08:12:00+02:00"
* period.end = "2026-06-15T08:45:00+02:00"
* participant.individual.display = "Dr. Ines Sitoe"
* reasonCode.text = "Persistent cough and fever for 3 days"
* extension[visitStatus].valueCodeableConcept = SISRMEVisitStatusCodes#under-observation "Under observation"
* extension[consultationOutcome].valueCodeableConcept = SISRMEConsultationOutcomeCodes#discharged "Discharged"
* extension[visitNotes].valueString = "Patient tolerated exam well; advised to return if symptoms worsen."
* extension[diagnosesSummary].valueString = "Acute upper respiratory tract infection"
* extension[prescriptionsSummary].valueString = "Paracetamol 500mg, amoxicillin 500mg TDS x 5 days"
* extension[testsSummary].valueString = "Rapid malaria test: negative"
* extension[medicalHistorySummary].valueString = "No known chronic conditions; NKDA"
* extension[objectiveExamSummary].valueString = "Temp 37.8C, RR 20, throat mildly inflamed, chest clear"
* extension[treatmentsSummary].valueString = "Antipyretic administered on site"
