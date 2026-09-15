// Extensions supporting SISRMEProgramEnrollment (EpisodeOfCare), for
// MISAU.B (General Outpatient Consultation / program enrollment) data
// elements with no matching core FHIR element.

Extension: SISRMERegistrationDate
Id: sisrme-registration-date
Title: "Registration Date"
Description: "The date the client was registered for the service, distinct from the service period start/end (MISAU.B.DE10)."
Context: EpisodeOfCare
* ^experimental = true
* value[x] only date

Extension: SISRMEDetailedEnrollmentStatus
Id: sisrme-detailed-enrollment-status
Title: "Detailed Enrollment Status"
Description: "The service-specific enrollment state (MISAU.B.DE11 and the various per-service enrollment-state tables), in addition to the coarse-grained core EpisodeOfCare.status."
Context: EpisodeOfCare
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEEnrollmentOutcomeVS (extensible)

Extension: SISRMETransferOrigin
Id: sisrme-transfer-origin
Title: "Transfer Origin"
Description: "Details of the health unit a client was transferred from, when applicable (MISAU.B.DE5-9)."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    transferred 1..1 MS and
    province 0..1 MS and
    district 0..1 MS and
    healthUnit 0..1 MS and
    otherHealthUnit 0..1 MS
* extension[transferred].value[x] only boolean
* extension[transferred] ^short = "Transferred from Another Health Unit? (DE5)"
* extension[province].value[x] only CodeableConcept
* extension[province].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[province] ^short = "Province (DE6) of the originating health unit"
* extension[district].value[x] only CodeableConcept
* extension[district].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[district] ^short = "District (DE7) of the originating health unit"
* extension[healthUnit].value[x] only string
* extension[healthUnit] ^short = "Health unit (DE8)"
* extension[otherHealthUnit].value[x] only string
* extension[otherHealthUnit] ^short = "Other health unit, free text (DE9)"

Extension: SISRMEConsentToContactTesting
Id: sisrme-consent-to-contact-testing
Title: "Consent to Contact Testing"
Description: "Whether the index client consents to their contacts being approached for HIV testing, and testing logistics (MISAU.B, ART Service: Consent Terms)."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    consentGiven 1..1 MS and
    preferredTestingLocation 0..1 MS and
    expectedTestingDate 0..1 MS
* extension[consentGiven].value[x] only CodeableConcept
* extension[consentGiven].valueCodeableConcept from $v2-0136-vs (required)
* extension[consentGiven] ^short = "Patient Consents to Contact Testing?"
* extension[preferredTestingLocation].value[x] only CodeableConcept
* extension[preferredTestingLocation].valueCodeableConcept from SISRMETestingLocationVS (required)
* extension[expectedTestingDate].value[x] only date

Extension: SISRMEContactAgreement
Id: sisrme-contact-agreement
Title: "Contact Agreement"
Description: "Whether the patient/caregiver agrees to be contacted, and by what method(s) (MISAU.B, Informed Consent)."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    agreesToBeContacted 1..1 MS and
    contactMethod 0..* MS
* extension[agreesToBeContacted].value[x] only CodeableConcept
* extension[agreesToBeContacted].valueCodeableConcept from $v2-0136-vs (required)
* extension[contactMethod].value[x] only CodeableConcept
* extension[contactMethod].valueCodeableConcept from SISRMEContactMethodVS (required)

Extension: SISRMEIndexContact
Id: sisrme-index-contact
Title: "Index Contact"
Description: "A person named through index-case contact tracing (MISAU.B, TARV Service: Status of Contacts, DE11-DE39). Modeled as a lightweight extension rather than a separate RelatedPerson resource, matching the source data dictionary's flat capture of contact name, sex, age, kinship and HIV testing status."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    name 1..1 MS and
    sex 0..1 MS and
    age 0..1 MS and
    kinship 0..1 MS and
    hivStatus 0..1 MS
* extension[name].value[x] only string
* extension[name] ^short = "First name and Surname (DE11-12)"
* extension[sex].value[x] only code
* extension[sex].valueCode from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* extension[age].value[x] only Age
* extension[kinship].value[x] only CodeableConcept
* extension[kinship].valueCodeableConcept from SISRMEIndexContactKinshipVS (extensible)
* extension[kinship] ^short = "Degree of kinship (DE17-30)"
* extension[hivStatus].value[x] only CodeableConcept
* extension[hivStatus].valueCodeableConcept from SISRMEIndexContactHIVStatusVS (required)

Extension: SISRMECCRRiskCondition
Id: sisrme-ccr-risk-condition-ext
Title: "CCR Risk Condition"
Description: "A risk condition recorded at CCR (Child at Risk Consultation) enrollment (MISAU.B.DE6-18)."
Context: EpisodeOfCare
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMECCRRiskConditionVS (required)

Extension: SISRMEDeliveryInformation
Id: sisrme-delivery-information
Title: "Delivery Information"
Description: "Place and date of delivery, recorded at CPP (Postpartum Consultation) enrollment (MISAU.B.DE43-50)."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    institutionalDelivery 1..1 MS and
    healthUnit 0..1 MS and
    province 0..1 MS and
    district 0..1 MS and
    dateOfDelivery 0..1 MS
* extension[institutionalDelivery].value[x] only boolean
* extension[institutionalDelivery] ^short = "true = Institutional Delivery (PI); false = Out-of-Hospital Delivery (PFM)"
* extension[healthUnit].value[x] only string
* extension[healthUnit] ^short = "Health Unit name (DE48)"
* extension[province].value[x] only CodeableConcept
* extension[province].valueCodeableConcept from SISRMEProvinceVS (extensible)
* extension[district].value[x] only CodeableConcept
* extension[district].valueCodeableConcept from SISRMEDistrictVS (example)
* extension[dateOfDelivery].value[x] only date

Extension: SISRMETBEnrollmentDetails
Id: sisrme-tb-enrollment-details
Title: "TB Enrollment Details"
Description: "TB-specific enrollment details recorded on the outpatient consultation program record (MISAU.B.DE43-51, TB Service additional enrollment fields). Clinical TB observations belong to a dedicated TB module profile."
Context: EpisodeOfCare
* ^experimental = true
* extension contains
    provenance 0..1 MS and
    sensitivityType 0..1 MS and
    treatmentDuration 0..1 MS and
    treatmentStartDate 0..1 MS
* extension[provenance].value[x] only CodeableConcept
* extension[provenance].valueCodeableConcept from SISRMETBProvenanceVS (required)
* extension[sensitivityType].value[x] only CodeableConcept
* extension[sensitivityType].valueCodeableConcept from SISRMETBSensitivityTypeVS (required)
* extension[treatmentDuration].value[x] only Quantity
* extension[treatmentDuration].valueQuantity.system = $UCUM (exactly)
* extension[treatmentDuration].valueQuantity.code = #mo (exactly)
* extension[treatmentDuration] ^short = "Treatment Duration in months (DE51)"
* extension[treatmentStartDate].value[x] only date
