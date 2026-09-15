// Profile: SISRMEPharmacyResupplyRequest
// Covers MISAU.E.DE1-9 ("Medication Request"): a health facility's
// periodic request to resupply its pharmacy stock. Modeled as
// SupplyRequest, which is the correct FHIR resource for a facility-level
// request for a supply of a product (as opposed to SISRMEMedicationRequest,
// which is a clinician's order for an individual patient).
//
// SCOPE NOTE: MISAU.E.DE10-104 ("List of medications", Stock Entry, Stock
// Summary, Stock Movement, Stock Record, Stock Inventory) describe a
// facility pharmacy's internal warehouse/stock ledger - drug catalog
// entries, goods-received notes, monthly consumption summaries, stock
// adjustments/waste/sales, bin-card style stock records, and physical
// inventory counts. None of these ~95 data elements reference a Patient;
// they are facility logistics/inventory-management data, which is a
// distinct problem domain from the clinical, patient-centered content
// modeled throughout the rest of this IG (and from SISRMEMedicationRequest
// above). Rather than force-fit a warehouse stock ledger into new,
// loosely-related FHIR profiles, this IG intentionally does not model
// DE10-104 as FHIR resources. A future iteration could model them properly
// using FHIR's supply-chain resources (SupplyRequest for further ordering,
// SupplyDelivery for goods received, and - if the target FHIR version is
// upgraded - the R5 InventoryReport/InventoryItem resources) or by
// integrating with a dedicated logistics management information system
// (e.g. OpenLMIS) rather than duplicating that function in this clinical
// IG.

Profile: SISRMEPharmacyResupplyRequest
Parent: SupplyRequest
Id: sisrme-pharmacy-resupply-request
Title: "SIS-RME Pharmacy Resupply Request"
Description: "A health facility's periodic request to resupply its pharmacy stock of a medication, per SIS-RME Data Dictionary module E (Pharmacy Module, Medication Request)."
* ^experimental = true

* identifier 0..1 MS
* identifier ^short = "Request Code (DE1)"
* status MS
* item[x] only CodeableConcept
* item[x] MS
* quantity MS
* quantity ^short = "Frequency (DE9) informs the requested quantity; see also SISRMEMedicationRequest.dispenseRequest.quantity for individual prescriptions"
* authoredOn 0..1 MS
* authoredOn ^short = "Request date (DE7)"
* occurrence[x] 0..1 MS
* occurrence[x] only dateTime
* occurrenceDateTime ^short = "Next Request Date (DE8)"

* extension contains
    SISRMEPharmacyRequestType named requestType 0..1 MS
* extension[requestType] ^short = "Request Type: Weekly/Bi-weekly/Monthly/Emergency (DE2-6)"

Extension: SISRMEPharmacyRequestType
Id: sisrme-pharmacy-request-type
Title: "Pharmacy Resupply Request Type"
Description: "The periodicity of a pharmacy resupply request (MISAU.E.DE2-6)."
Context: SupplyRequest
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEPharmacyRequestTypeVS (required)

CodeSystem: SISRMEPharmacyRequestTypeCodes
Id: sisrme-pharmacy-request-type
Title: "SIS-RME Pharmacy Resupply Request Type"
Description: "Value set members for MISAU.E.DE2-6."
* ^experimental = true
* ^caseSensitive = true
* #weekly "Weekly"
* #bi-weekly "Bi-weekly"
* #monthly "Monthly"
* #emergency "Emergency"

ValueSet: SISRMEPharmacyRequestTypeVS
Id: sisrme-pharmacy-request-type-vs
Title: "SIS-RME Pharmacy Resupply Request Type Value Set"
Description: "Value set for MISAU.E.DE2-6."
* ^experimental = true
* include codes from system SISRMEPharmacyRequestTypeCodes

Instance: PharmacyResupplyRequestExample
InstanceOf: SISRMEPharmacyResupplyRequest
Title: "Example: SIS-RME Pharmacy Resupply Request"
Description: "An example monthly resupply request from a health facility pharmacy."
Usage: #example
* status = #active
* itemCodeableConcept = SISRMEMedicationCodeExample#tdf-3tc-dtg "Tenofovir/Lamivudine/Dolutegravir (TDF/3TC/DTG)"
* quantity = 500 '{tablet}' "tablet"
* authoredOn = "2026-06-01"
* occurrenceDateTime = "2026-07-01"
* extension[requestType].valueCodeableConcept = SISRMEPharmacyRequestTypeCodes#monthly "Monthly"
