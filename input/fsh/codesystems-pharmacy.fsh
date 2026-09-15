// Local CodeSystems for MISAU.E (Pharmacy Module). This module bundles two
// distinct domains: (1) patient-level prescribing (Record/Register
// Prescription, General/Dietary/Therapeutic/ART/PrEP-TB-TPT prescription),
// modeled here as SISRMEMedicationRequest, and (2) facility-level
// medicine supply-chain/warehouse logistics (Medication Request for
// resupply, Stock Entry/Summary/Movement/Record/Inventory). Only a
// lightweight SupplyRequest profile is provided for (2) - see
// supplyrequest-pharmacy.fsh for the rationale for not modeling the full
// ~95-element stock ledger as new FHIR profiles in this clinical IG.

CodeSystem: SISRMEPrescriptionType
Id: sisrme-prescription-type
Title: "SIS-RME Prescription Type"
Description: "Type of prescription being registered (MISAU.E.DE109-116)."
* ^caseSensitive = true
* #general "General"
* #art "ART (Antiretroviral Therapy)" // not enumerated among MISAU.E.DE109-116's own options but given its own registration workflow (ART prescription) in the source dictionary
* #dietetics "Dietetics"
* #therapeutic "Therapeutic"
* #interest "Interest"
* #prep "PrEP"
* #tpt "TPT"
* #tb "TB"

CodeSystem: SISRMEDietType
Id: sisrme-diet-type
Title: "SIS-RME Diet Type and Modifiers"
Description: "Diet type and dietary modifiers for a dietary prescription (MISAU.E.DE161-184)."
* ^caseSensitive = true
* #normal "Normal"
* #liquid "Liquid"
* #semi-liquid "Semi-liquid"
* #soft "Soft"
* #bland "Bland"
* #restricted "Restricted"
* #low-sodium "Low-sodium"
* #reduced-sodium "Reduced-sodium"
* #high-sodium "High-sodium"
* #normal-sodium "Normal-sodium"
* #low-calorie "Low-calorie"
* #high-calorie "High-calorie"
* #normal-calorie "Normal-calorie"
* #low-fluid "Low-fluid"
* #high-fluid "High-fluid"
* #normal-fluid "Normal-fluid"
* #low-protein "Low-protein"
* #high-protein "High-protein"
* #normal-protein "Normal-protein"
* #diabetic "Diabetic"
* #renal "Renal"
* #vegetarian "Vegetarian"
* #lactose-free "Lactose-free"

CodeSystem: SISRMEMedicationFrequency
Id: sisrme-medication-frequency
Title: "SIS-RME Medication Dosing Frequency"
Description: "Dosing frequency for a prescribed medication (MISAU.E.DE158, DE234-241), consolidating the General and PrEP/TB/TPT prescription frequency tables (identical options, worded slightly differently)."
* ^caseSensitive = true
* #every-4-hours "Every 4 hours"
* #every-6-hours "Every 6 hours"
* #every-8-hours "Every 8 hours"
* #every-12-hours "Every 12 hours"
* #every-24-hours "Every 24 hours"
* #single-dose "SD (Single Dose)"
* #as-needed "SOS (as needed)"

CodeSystem: SISRMETherapeuticLine
Id: sisrme-therapeutic-line
Title: "SIS-RME Therapeutic Line"
Description: "Line of therapy for an ART prescription (MISAU.E.DE198-202)."
* ^caseSensitive = true
* #first-line "First Line"
* #first-alternative-line "First Alternative Line"
* #second-line "Second Line"
* #third-line "Third Line"

CodeSystem: SISRMELineChangeReason
Id: sisrme-line-change-reason
Title: "SIS-RME Reason for Therapeutic Line Change"
Description: "Reason for changing a patient's therapeutic line (MISAU.E.DE218)."
* ^caseSensitive = true
* #therapeutic-failure "Therapeutic Failure"
* #allergy "Allergy"
* #other "Other"

CodeSystem: SISRMEPatientTreatmentStatus
Id: sisrme-patient-treatment-status
Title: "SIS-RME Patient Treatment Status"
Description: "Whether a prescription is for a patient's first or a subsequent consultation, or for treatment initiation or maintenance (MISAU.E.DE212-214, DE246-248)."
* ^caseSensitive = true
* #first-consultation "First consultation"
* #subsequent-consultation "Subsequent consultation"
* #initiation "Initiation"
* #maintenance "Maintenance"
