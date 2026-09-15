// Extensions supporting SISRMEPatient and SISRMEVisitSummary, for
// MOZ.Registration data elements that have no matching core FHIR element
// and no suitable existing extension.

Extension: SISRMEEstimatedAge
Id: sisrme-estimated-age
Title: "Estimated Age"
Description: "An estimated age recorded at registration when an exact, confirmed date of birth is not available (MOZ.Registration.DE.5-9)."
Context: Patient
* value[x] only Age
* valueAge.value 1..1 MS
* valueAge.unit 1..1 MS
* valueAge.system 1..1
* valueAge.system = $UCUM (exactly)
* valueAge.code from $age-units-vs (required)

Extension: SISRMEBirthRegistrationStatus
Id: sisrme-birth-registration-status
Title: "Birth Registration Status"
Description: "Whether the patient (if a child) was registered at the civil registry office (MOZ.Registration.DE.10-13)."
Context: Patient
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEBirthRegistrationStatusVS (required)

Extension: SISRMERace
Id: sisrme-race
Title: "Race"
Description: "Race as captured at patient registration (MOZ.Registration.DE.17-23)."
Context: Patient
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMERaceVS (required)

Extension: SISRMEFathersName
Id: sisrme-fathers-name
Title: "Father's Name"
Description: "The name of the patient's father (MOZ.Registration.DE.33). There is no standard FHIR extension for this; compare the core patient-mothersMaidenName extension used for MOZ.Registration.DE.34."
Context: Patient
* value[x] only string
* valueString 1..1 MS

Extension: SISRMEOccupation
Id: sisrme-occupation
Title: "Occupation/Profession"
Description: "The patient's occupation or profession (MOZ.Registration.DE.49, DE.137)."
Context: Patient
* value[x] only string
* valueString 1..1 MS

Extension: SISRMEContactPurpose
Id: sisrme-contact-purpose
Title: "Emergency Contact Purpose"
Description: "The role(s) a registered contact plays for the patient: companion, emergency contact, carer and/or confidant (MOZ.Registration.DE.71-74)."
Context: Patient.contact
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEContactPurposeVS (required)

Extension: SISRMEContactIdentifier
Id: sisrme-contact-identifier
Title: "Emergency Contact Identifier"
Description: "A Mozambique national identifier (Old NID, NUIT or NUIC) for a registered contact (MOZ.Registration.DE.75-76)."
Context: Patient.contact
* extension contains
    type 1..1 MS and
    value 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from SISRMEMozambiqueIdentifierTypeVS (required)
* extension[value].value[x] only string

Extension: SISRMEDonorInformation
Id: sisrme-donor-information
Title: "Blood Donor Information"
Description: "Blood donor registration information (MOZ.Registration.DE.78-95). The donor number itself (DE.77) is carried as a Patient.identifier slice; see SISRMEPatient."
Context: Patient
* extension contains
    bloodGroup 0..1 MS and
    rhesusFactor 0..1 MS and
    donationType 0..1 MS and
    previousDonations 0..1 MS and
    numberOfDonations 0..1 MS and
    locationOfPreviousDonation 0..1 MS and
    dateOfLastDonation 0..1 MS and
    donationReason 0..1 MS and
    donationObservations 0..1 MS
* extension[bloodGroup].value[x] only CodeableConcept
* extension[bloodGroup].valueCodeableConcept from SISRMEBloodGroupVS (required)
* extension[rhesusFactor].value[x] only CodeableConcept
* extension[rhesusFactor].valueCodeableConcept from SISRMERhesusFactorVS (required)
* extension[donationType].value[x] only CodeableConcept
* extension[donationType].valueCodeableConcept from SISRMEDonationTypeVS (required)
* extension[previousDonations].value[x] only CodeableConcept
* extension[previousDonations].valueCodeableConcept from $v2-0136-vs (required)
* extension[numberOfDonations].value[x] only integer
* extension[locationOfPreviousDonation].value[x] only string
* extension[dateOfLastDonation].value[x] only date
* extension[donationReason].value[x] only string
* extension[donationObservations].value[x] only string

Extension: SISRMESocioeconomicProfile
Id: sisrme-socioeconomic-profile
Title: "Socioeconomic Profile"
Description: "Socioeconomic registration information (MOZ.Registration.DE.132-158)."
Context: Patient
* extension contains
    schoolLevel 0..1 MS and
    livingArrangement 0..1 MS and
    employmentStatus 0..1 MS and
    householdSize 0..1 MS and
    hasIncomeSource 0..1 MS and
    registrationCategory 0..* MS
* extension[schoolLevel].value[x] only CodeableConcept
* extension[schoolLevel].valueCodeableConcept from SISRMESchoolLevelVS (required)
* extension[livingArrangement].value[x] only CodeableConcept
* extension[livingArrangement].valueCodeableConcept from SISRMELivingArrangementVS (required)
* extension[employmentStatus].value[x] only CodeableConcept
* extension[employmentStatus].valueCodeableConcept from SISRMEEmploymentStatusVS (required)
* extension[householdSize].value[x] only integer
* extension[hasIncomeSource].value[x] only CodeableConcept
* extension[hasIncomeSource].valueCodeableConcept from $v2-0136-vs (required)
* extension[registrationCategory].value[x] only CodeableConcept
* extension[registrationCategory].valueCodeableConcept from SISRMERegistrationCategoryVS (required)

Extension: SISRMEFamilyRelationship
Id: sisrme-family-relationship
Title: "Registered Family Relationship"
Description: "A family relationship registered for the patient, e.g. for mother/child linkage at birth (MOZ.Registration.DE.159-164)."
Context: Patient
* extension contains
    relationshipType 1..1 MS and
    newborn 0..1 MS
* extension[relationshipType].value[x] only CodeableConcept
* extension[relationshipType].valueCodeableConcept from SISRMEFamilyRelationshipTypeVS (required)
* extension[newborn].value[x] only boolean

Extension: SISRMEVisitStatus
Id: sisrme-visit-status
Title: "Visit Status"
Description: "The patient's current status within an outpatient visit/queue (MOZ.Registration.DE.97-100)."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEVisitStatusVS (required)

Extension: SISRMEConsultationOutcome
Id: sisrme-consultation-outcome
Title: "Consultation Outcome"
Description: "Outcome of the consultation/visit (MOZ.Registration.DE.128-131)."
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from SISRMEConsultationOutcomeVS (required)

Extension: SISRMEVisitNotes
Id: sisrme-visit-notes
Title: "Visit Notes"
Description: "Free-text additional detail recorded about the visit (MOZ.Registration.DE.121)."
Context: Encounter
* value[x] only string

Extension: SISRMEDiagnosesSummary
Id: sisrme-diagnoses-summary
Title: "Diagnoses Summary"
Description: "Free-text summary of diagnoses obtained during the visit (MOZ.Registration.DE.122)."
Context: Encounter
* value[x] only string

Extension: SISRMEPrescriptionsSummary
Id: sisrme-prescriptions-summary
Title: "Prescriptions Summary"
Description: "Free-text summary of prescriptions issued during the visit (MOZ.Registration.DE.123)."
Context: Encounter
* value[x] only string

Extension: SISRMETestsSummary
Id: sisrme-tests-summary
Title: "Tests Summary"
Description: "Free-text summary of additional laboratory, rapid and imaging tests performed and their results (MOZ.Registration.DE.124)."
Context: Encounter
* value[x] only string

Extension: SISRMEMedicalHistorySummary
Id: sisrme-medical-history-summary
Title: "Medical History Summary"
Description: "Free-text summary of the medical history recorded during the visit (MOZ.Registration.DE.125)."
Context: Encounter
* value[x] only string

Extension: SISRMEObjectiveExamSummary
Id: sisrme-objective-exam-summary
Title: "Objective Exam Summary"
Description: "Free-text summary of the objective exam recorded during the visit (MOZ.Registration.DE.126)."
Context: Encounter
* value[x] only string

Extension: SISRMETreatmentsSummary
Id: sisrme-treatments-summary
Title: "Treatments Performed Summary"
Description: "Free-text summary of treatments performed during the visit (MOZ.Registration.DE.127)."
Context: Encounter
* value[x] only string
