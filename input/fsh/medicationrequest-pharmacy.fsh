// Profile: SISRMEMedicationRequest
// Covers the patient-level prescribing content of MISAU.E (Pharmacy
// Module): Record Prescription, Register Prescription (type selection),
// Register General Medical Prescription, Register Dietary Prescription,
// Register Therapeutic Prescription, ART prescription, and PrEP/TB/TPT
// prescription. Many source data elements map directly onto core
// MedicationRequest elements (medication, dosageInstruction, dispense
// request quantity/duration, note, authoredOn, requester, identifier);
// only elements without a core home are carried as extensions - see
// extensions-pharmacy.fsh.

Profile: SISRMEMedicationRequest
Parent: MedicationRequest
Id: sisrme-medication-request
Title: "SIS-RME Medication Request"
Description: "A medication, dietary or therapeutic prescription, per SIS-RME Data Dictionary module E (Pharmacy Module)."

* identifier 0..1 MS
* identifier ^short = "Prescription Number (DE105)"
* status MS
* status ^short = "State of prescription (DE108)"
* intent MS
* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* encounter 0..1 MS
* authoredOn 0..1 MS
* authoredOn ^short = "Date - Prescription date (DE106)"
* requester 0..1 MS
* requester ^short = "Prescriber (DE195) / Clinician Name (DE210, DE230), recorded as a display-only reference when no Practitioner resource is available"
* medication[x] MS
* medication[x] only CodeableConcept
* medicationCodeableConcept from SISRMEMedicationCodeVS (example)
* medicationCodeableConcept ^short = "Name of the medicine (DE118, DE232); FNM code (DE117, DE231) carried in medicationCodeableConcept.coding.code"
* note 0..* MS
* note ^short = "Further observations/comments/notes (DE160 instructions also use dosageInstruction.patientInstruction; DE189, DE193 use note)"

* dosageInstruction 0..* MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.patientInstruction 0..1 MS
* dosageInstruction.patientInstruction ^short = "Instructions (DE160)"
* dosageInstruction.additionalInstruction 0..* MS
* dosageInstruction.additionalInstruction ^short = "Site-specific application instructions, e.g. Apply to both eyes/right ear (DE119-125)"
* dosageInstruction.route 0..1 MS
* dosageInstruction.route from http://hl7.org/fhir/ValueSet/route-codes (extensible)
* dosageInstruction.route ^short = "Administration route (DE119, DE126-139, DE185-188)"
* dosageInstruction.timing.code 0..1 MS
* dosageInstruction.timing.code from SISRMEMedicationFrequencyVS (required)
* dosageInstruction.timing.code ^short = "Frequency (DE158, DE234-241)"
* dosageInstruction.doseAndRate 0..1 MS
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity
* dosageInstruction.doseAndRate.dose[x] ^short = "Dose (DE140-150)"

* dispenseRequest 0..1 MS
* dispenseRequest.quantity 0..1 MS
* dispenseRequest.quantity ^short = "Prescribed quantity (DE159, DE242)"
* dispenseRequest.expectedSupplyDuration 0..1 MS
* dispenseRequest.expectedSupplyDuration ^short = "Treatment duration (DE152-157, DE203-209, DE223-229)"

* extension contains
    SISRMEPrescriptionTypeExt named prescriptionType 0..1 MS and
    SISRMEHealthService named healthService 0..1 MS and
    SISRMEDietModifier named dietModifier 0..* MS and
    SISRMETherapeuticRegimen named therapeuticRegimen 0..1 MS and
    SISRMETherapeuticLineExt named therapeuticLine 0..1 MS and
    SISRMESpecialPrescription named specialPrescription 0..1 MS and
    SISRMEReasonForPrescription named reasonForPrescription 0..1 MS and
    SISRMEPatientTreatmentStatusExt named patientTreatmentStatus 0..1 MS and
    SISRMELineChange named lineChange 0..1 MS and
    SISRMENextRefillDate named nextRefillDate 0..1 MS and
    SISRMEDispensedQuantity named dispensedQuantity 0..1 MS and
    SISRMEDispensingType named dispensingType 0..1 MS and
    SISRMEDispensingMode named dispensingMode 0..1 MS

* extension[prescriptionType] ^short = "Prescription Type: General/Dietetics/Therapeutic/Interest/PrEP/TPT/TB (DE109-116)"
* extension[dietModifier] ^short = "Diet type and modifiers (DE161-184)"
* extension[therapeuticRegimen] ^short = "Therapeutic Regimen, free text (DE197, DE222)"
* extension[therapeuticLine] ^short = "Therapeutic Line (DE198-202)"
* extension[specialPrescription] ^short = "Special Prescription (DE196, DE220)"
* extension[patientTreatmentStatus] ^short = "Patient status: first/subsequent consultation, initiation/maintenance (DE212-214, DE246-248)"
* extension[lineChange] ^short = "Change of Line?, Reason for change (DE215-219)"
* extension[dispensingType] ^short = "Dispensing Type (DE244)"
* extension[dispensingMode] ^short = "Dispensing Mode (DE249)"

ValueSet: SISRMEMedicationCodeVS
Id: sisrme-medication-code-vs
Title: "SIS-RME Medication Code (example)"
Description: "Example, non-exhaustive value set for SISRMEMedicationRequest.medicationCodeableConcept. The source data dictionary specifies these as a single-selection list against the national essential medicines list (Formulário Nacional de Medicamentos, FNM); implementers should bind to a complete FNM-derived code system rather than this illustrative example set."
* include codes from system SISRMEMedicationCodeExample

CodeSystem: SISRMEMedicationCodeExample
Id: sisrme-medication-code-example
Title: "SIS-RME Medication Code (example codes)"
Description: "A small, illustrative sample of medications, keyed loosely on FNM-style codes. See SISRMEMedicationCodeVS."
* ^caseSensitive = true
* #paracetamol-500mg "Paracetamol 500mg"
* #amoxicillin-500mg "Amoxicillin 500mg"
* #tdf-3tc-dtg "Tenofovir/Lamivudine/Dolutegravir (TDF/3TC/DTG)"
* #rhze "Rifampicin/Isoniazid/Ethambutol/Pyrazinamide (RHZE)"

Instance: MedicationRequestARTExample
InstanceOf: SISRMEMedicationRequest
Title: "Example: SIS-RME ART Medication Request"
Description: "An example ART refill prescription for the example patient, first-line regimen, one month's supply, no line change."
Usage: #example
* status = #active
* intent = #order
* subject = Reference(PatientRegistrationExample)
* encounter = Reference(HIVConsultationExample)
* authoredOn = "2026-06-15"
* requester.display = "Dr. Ines Sitoe"
* medicationCodeableConcept = SISRMEMedicationCodeExample#tdf-3tc-dtg "Tenofovir/Lamivudine/Dolutegravir (TDF/3TC/DTG)"
* dosageInstruction[0].text = "Take one tablet by mouth once daily"
* dosageInstruction[0].route = http://snomed.info/sct#26643006 "Oral route"
* dosageInstruction[0].timing.code = SISRMEMedicationFrequency#every-24-hours "Every 24 hours"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 '{tablet}' "tablet"
* dispenseRequest.quantity = 30 '{tablet}' "tablet"
* dispenseRequest.expectedSupplyDuration = 1 'mo' "month"
* dispenseRequest.expectedSupplyDuration.system = $UCUM
* extension[prescriptionType].valueCodeableConcept = SISRMEPrescriptionType#art "ART (Antiretroviral Therapy)"
* extension[therapeuticRegimen].valueString = "TDF/3TC/DTG"
* extension[therapeuticLine].valueCodeableConcept = SISRMETherapeuticLine#first-line "First Line"
* extension[patientTreatmentStatus].valueCodeableConcept = SISRMEPatientTreatmentStatus#maintenance "Maintenance"
* extension[lineChange].extension[changed].valueCodeableConcept = $v2-0136#N "No"
* extension[nextRefillDate].valueDate = "2026-07-15"
