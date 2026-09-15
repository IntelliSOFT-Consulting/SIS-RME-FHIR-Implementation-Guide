// Extensions supporting SISRMEMedicationRequest, for MISAU.E (Pharmacy
// Module) data elements with no matching core MedicationRequest element.
// Many fields in this module DO map to core MedicationRequest elements
// directly (medicationCodeableConcept, dosageInstruction.route/route
// bound to the core FHIR route-codes value set/timing/patientInstruction,
// dispenseRequest.quantity/expectedSupplyDuration, note, authoredOn,
// requester, identifier) and so need no extension at all; see
// medicationrequest-pharmacy.fsh.

Extension: SISRMEPrescriptionTypeExt
Id: sisrme-prescription-type-ext
Title: "Prescription Type"
Description: "Type of prescription (MISAU.E.DE109-116)."
Context: MedicationRequest
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPrescriptionTypeVS (required)

Extension: SISRMEHealthService
Id: sisrme-health-service
Title: "Health Service"
Description: "The health service under which the prescription was recorded (MISAU.E.DE107)."
Context: MedicationRequest
* ^experimental = true
* value[x] only string

Extension: SISRMEDietModifier
Id: sisrme-diet-modifier
Title: "Diet Modifier"
Description: "A diet type or modifier selected for a dietary prescription (MISAU.E.DE161-184)."
Context: MedicationRequest
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEDietTypeVS (required)

Extension: SISRMETherapeuticRegimen
Id: sisrme-therapeutic-regimen
Title: "Therapeutic Regimen"
Description: "Free-text therapeutic regimen for an ART, PrEP, TB or TPT prescription (MISAU.E.DE197, DE222)."
Context: MedicationRequest
* ^experimental = true
* value[x] only string

Extension: SISRMETherapeuticLineExt
Id: sisrme-therapeutic-line-ext
Title: "Therapeutic Line"
Description: "Line of therapy for an ART prescription (MISAU.E.DE198-202)."
Context: MedicationRequest
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMETherapeuticLineVS (required)

Extension: SISRMESpecialPrescription
Id: sisrme-special-prescription
Title: "Special Prescription"
Description: "Whether this is a special (non-routine) prescription (MISAU.E.DE196, DE220)."
Context: MedicationRequest
* ^experimental = true
* value[x] only boolean

Extension: SISRMEReasonForPrescription
Id: sisrme-reason-for-prescription
Title: "Reason for Prescription"
Description: "Free-text reason for a PrEP/TB/TPT prescription (MISAU.E.DE221)."
Context: MedicationRequest
* ^experimental = true
* value[x] only string

Extension: SISRMEPatientTreatmentStatusExt
Id: sisrme-patient-treatment-status-ext
Title: "Patient Treatment Status"
Description: "Whether this prescription is for the patient's first or a subsequent consultation, or represents treatment initiation or maintenance (MISAU.E.DE212-214, DE246-248)."
Context: MedicationRequest
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPatientTreatmentStatusVS (required)

Extension: SISRMELineChange
Id: sisrme-line-change
Title: "Therapeutic Line Change"
Description: "Whether the patient's therapeutic line was changed at this prescription, and why (MISAU.E.DE215-219)."
Context: MedicationRequest
* ^experimental = true
* extension contains
    changed 1..1 MS and
    reason 0..1 MS and
    otherSpecify 0..1 MS
* extension[changed].value[x] only CodeableConcept
* extension[changed].valueCodeableConcept from $v2-0136-vs (required)
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept from SISRMELineChangeReasonVS (required)
* extension[otherSpecify].value[x] only string

Extension: SISRMENextRefillDate
Id: sisrme-next-refill-date
Title: "Next Refill Date"
Description: "Date the patient is expected to return for their next medication refill (MISAU.E.DE211, DE245)."
Context: MedicationRequest
* ^experimental = true
* value[x] only date

Extension: SISRMEDispensedQuantity
Id: sisrme-dispensed-quantity
Title: "Dispensed Quantity"
Description: "Quantity of medication actually dispensed, when different from the quantity prescribed (MISAU.E.DE243). Captured here as an extension rather than on a separate MedicationDispense resource, consistent with this IG's pragmatic single-resource modeling of the source dictionary's flat prescription/dispensing form."
Context: MedicationRequest
* ^experimental = true
* value[x] only Quantity

Extension: SISRMEDispensingType
Id: sisrme-dispensing-type
Title: "Dispensing Type"
Description: "Free-text dispensing type (MISAU.E.DE244)."
Context: MedicationRequest
* ^experimental = true
* value[x] only string

Extension: SISRMEDispensingMode
Id: sisrme-dispensing-mode
Title: "Dispensing Mode"
Description: "Free-text dispensing mode (MISAU.E.DE249)."
Context: MedicationRequest
* ^experimental = true
* value[x] only string
