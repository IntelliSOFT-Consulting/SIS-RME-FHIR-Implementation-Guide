// Profile: SISRMEProgramEnrollment
// Covers MISAU.B (General Outpatient Consultation), which in the SIS-RME
// Data Dictionary is a program-enrollment / episode tracking module: a
// client is enrolled into one or more services (ART, PrEP, CCR, CCS, CCD,
// PTV/ETV, CPN, CPP, TB Sensitive, XDR-TB, Pediatric TB, TPT), each with
// its own lifecycle of enrollment states. This is modeled as an
// EpisodeOfCare per service enrollment, rather than as an Encounter,
// because it represents a period of program membership rather than a
// single visit; individual visits within the episode are represented by
// SISRMEVisitSummary (Encounter), linked via Encounter.episodeOfCare.

Profile: SISRMEProgramEnrollment
Parent: EpisodeOfCare
Id: sisrme-program-enrollment
Title: "SIS-RME Program Enrollment"
Description: "A client's enrollment in a MISAU outpatient program/service, per SIS-RME Data Dictionary module B (General Outpatient Consultation)."

* patient 1..1 MS
* patient only Reference(SISRMEPatient)
* status MS
* status ^short = "Coarse-grained episode status; see extension[detailedStatus] for the service-specific enrollment state (DE11 and per-service state tables)"
* type 1..* MS
* type from SISRMEProgramServiceVS (extensible)
* type ^short = "Department/Program (DE1) and Service (DE2)"
* period 0..1 MS
* period ^short = "Start Date (DE3) and End Date (DE4)"

* extension contains
    SISRMERegistrationDate named registrationDate 0..1 MS and
    SISRMEDetailedEnrollmentStatus named detailedStatus 0..1 MS and
    SISRMETransferOrigin named transferOrigin 0..1 MS and
    SISRMEConsentToContactTesting named consentToContactTesting 0..1 MS and
    SISRMEContactAgreement named contactAgreement 0..1 MS and
    SISRMEIndexContact named indexContact 0..* MS and
    SISRMECCRRiskCondition named ccrRiskCondition 0..* MS and
    SISRMEDeliveryInformation named deliveryInformation 0..1 MS and
    SISRMETBEnrollmentDetails named tbEnrollmentDetails 0..1 MS

* extension[registrationDate] ^short = "Date (DE10)"
* extension[transferOrigin] ^short = "Transferred from Another Health Unit? and origin details (DE5-9)"
* extension[consentToContactTesting] ^short = "ART Service: Consent Terms (Patient Consents to Contact Testing?, Preferred Testing Location, Expected Testing Date)"
* extension[contactAgreement] ^short = "Informed Consent (Patient/Caregiver Agrees to Be Contacted?, Contact Method)"
* extension[indexContact] ^short = "TARV Service: Status of Contacts (First name, Surname, Sex, Age, Degree of kinship, HIV status)"
* extension[ccrRiskCondition] ^short = "CCR additional enrollment fields: Risk Conditions"
* extension[deliveryInformation] ^short = "CPP additional enrollment field: Place and Date of Delivery"
* extension[tbEnrollmentDetails] ^short = "TB Service additional enrollment fields: Provenance, Type of TB, Treatment Duration, Treatment Start Date"

Instance: ProgramEnrollmentARTExample
InstanceOf: SISRMEProgramEnrollment
Title: "Example: SIS-RME ART Program Enrollment"
Description: "An example ART (antiretroviral therapy) program enrollment for the example patient, transferred in from another health unit, with index-contact tracing information."
Usage: #example
* patient = Reference(PatientRegistrationExample)
* status = #active
* type = SISRMEProgramArea#hiv "HIV"
* type[+] = SISRMEProgramService#art "ART/TARV (Antiretroviral Therapy)"
* period.start = "2026-01-10"
* extension[registrationDate].valueDate = "2026-01-10"
* extension[detailedStatus].valueCodeableConcept = SISRMEEnrollmentOutcome#transferred-in "Transferred from another Health Unit"
* extension[transferOrigin].extension[transferred].valueBoolean = true
* extension[transferOrigin].extension[province].valueCodeableConcept = SISRMEMozambiqueProvince#gaza "Gaza"
* extension[transferOrigin].extension[district].valueCodeableConcept = SISRMEDistrictExample#kamubukwana "KaMubukwana"
* extension[transferOrigin].extension[healthUnit].valueString = "Centro de Saúde de Chókwè"
* extension[consentToContactTesting].extension[consentGiven].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[consentToContactTesting].extension[preferredTestingLocation].valueCodeableConcept = SISRMETestingLocation#health-unit "Health Unit"
* extension[consentToContactTesting].extension[expectedTestingDate].valueDate = "2026-02-01"
* extension[contactAgreement].extension[agreesToBeContacted].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[contactAgreement].extension[contactMethod][0].valueCodeableConcept = SISRMEContactMethod#telephone-call "Telephone Call"
* extension[indexContact][0].extension[name].valueString = "Joaquim Machava"
* extension[indexContact][0].extension[sex].valueCode = #male
* extension[indexContact][0].extension[kinship].valueCodeableConcept = $v3-RoleCode#SPS "spouse"
* extension[indexContact][0].extension[hivStatus].valueCodeableConcept = SISRMEIndexContactHIVStatus#unknown "Unknown"
