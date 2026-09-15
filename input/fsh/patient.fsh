// Profile: SISRMEPatient
// Covers the patient-registration data elements of MOZ.Registration
// (SIS-RME Data Dictionary - June 2026, module A: Registration), i.e.
// DE.1-34 (core demographics), DE.35-43 (identification), DE.44-49
// (address/contact), DE.50-76 (emergency contact/companion), DE.77-95
// (blood donor information), DE.132-158 (socioeconomic profile) and
// DE.159-164 (registered family relationships).
//
// MOZ.Registration.DE.101-117 ("Visit Information") are not modeled here:
// in the source data dictionary they carry no Data Type or Input Options
// and represent application menu/navigation functions, not data elements.
// MOZ.Registration.DE.96-100 and DE.118-131 (visit/consultation content)
// are modeled on SISRMEVisitSummary (Encounter) instead - see
// encounter-visit-summary.fsh.

Profile: SISRMEPatient
Parent: Patient
Id: sisrme-patient
Title: "SIS-RME Patient"
Description: "A patient registered in the SIS-RME system, per MISAU SIS-RME Data Dictionary module A (Registration)."

// --- Core demographics (DE.1-34) ---

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice by name.use to separate the patient's usual name from a registered nickname."
* name contains
    legalName 1..1 MS and
    nickname 0..1 MS
* name[legalName].use = #usual (exactly)
* name[legalName].given 1..* MS
* name[legalName].given ^short = "First name (DE.1) as given[0]; Other names (DE.2) as given[1..]"
* name[nickname].use = #nickname (exactly)
* name[nickname].text 1..1 MS
* name[nickname].text ^short = "Nickname (DE.3)"

* birthDate 0..1 MS
* birthDate ^short = "Date of birth (DE.4)"
* extension contains
    SISRMEEstimatedAge named estimatedAge 0..1 MS and
    SISRMEBirthRegistrationStatus named birthRegistrationStatus 0..1 MS and
    SISRMERace named race 0..1 MS and
    $patient-nationality named nationality 0..1 MS and
    $patient-birthPlace named birthPlace 0..1 MS and
    $patient-mothersMaidenName named mothersName 0..1 MS and
    SISRMEFathersName named fathersName 0..1 MS and
    SISRMEOccupation named occupation 0..1 MS and
    SISRMEDonorInformation named donorInformation 0..1 MS and
    SISRMESocioeconomicProfile named socioeconomicProfile 0..1 MS and
    SISRMEFamilyRelationship named familyRelationship 0..* MS

* extension[estimatedAge] ^short = "Estimated age when date of birth is not exact/confirmed (DE.5-9)"
* extension[birthRegistrationStatus] ^short = "Was the child registered at the civil registry office (DE.10-13)"
* extension[nationality].extension[code].valueCodeableConcept.coding.system = $ISO3166 (exactly)
* extension[nationality] ^short = "Country of Nationality (DE.30)"
* extension[birthPlace].valueAddress.state from SISRMEProvinceVS (extensible)
* extension[birthPlace].valueAddress.district from SISRMEDistrictVS (example)
* extension[birthPlace] ^short = "Place of origin: Province (DE.31) and District (DE.32)"
* extension[mothersName] ^short = "Mother's Name (DE.34)"
* extension[fathersName] ^short = "Father's Name (DE.33)"

* gender 0..1 MS
* gender ^short = "Sex (DE.14-16): Masculine -> male, Feminine -> female"
* maritalStatus 0..1 MS
* maritalStatus from $v3-MaritalStatus-vs (extensible)
* maritalStatus ^short = "Marital Status (DE.24-29)"

// --- Identification Information (DE.35-43) and Donor Information (DE.77) ---

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice by identifier.system to distinguish the national identification document from the blood donor number."
* identifier contains
    nationalDocument 0..1 MS and
    donorNumber 0..1 MS
* identifier[nationalDocument].system 1..1 MS
* identifier[nationalDocument].system = "urn:sisrme:document-number" (exactly)
* identifier[nationalDocument].type 1..1 MS
* identifier[nationalDocument].type from SISRMEDocumentTypeVS (required)
* identifier[nationalDocument].value 1..1 MS
* identifier[nationalDocument] ^short = "Document type (DE.35-42) and Document number (DE.43)"
* identifier[donorNumber].system 1..1 MS
* identifier[donorNumber].system = "urn:sisrme:donor-number" (exactly)
* identifier[donorNumber].value 1..1 MS
* identifier[donorNumber] ^short = "Donor number (DE.77)"

// --- Address and Contact Information (DE.44-49) ---

* address 0..1 MS
* address.use = #home (exactly)
* address.line 0..1 MS
* address.line ^short = "Near (nearby landmark) (DE.46)"
* address.state from SISRMEProvinceVS (extensible)
* address.state ^short = "Province (DE.44)"
* address.district from SISRMEDistrictVS (example)
* address.district ^short = "District (DE.45)"
* telecom 0..* MS
* telecom ^short = "Telephone (DE.47) as system=phone; email (DE.48) as system=email"
* extension[occupation] ^short = "Profession/Occupation (DE.49, DE.137)"

// --- Emergency Contact/Companion (DE.50-76) ---

* contact 0..* MS
* contact.name 0..1 MS
* contact.name ^short = "Full Name (DE.50)"
* contact.relationship 0..* MS
* contact.relationship from SISRMEContactRelationshipVS (extensible)
* contact.relationship ^short = "Degree of relationship (DE.51-67)"
* contact.address 0..1 MS
* contact.address ^short = "Address (DE.68)"
* contact.telecom 0..* MS
* contact.telecom ^short = "Telephone (DE.69) as system=phone; Email (DE.70) as system=email"
* contact.extension contains
    SISRMEContactPurpose named purpose 0..* MS and
    SISRMEContactIdentifier named contactIdentifier 0..1 MS
* contact.extension[purpose] ^short = "Companion (DE.71), Emergency contact (DE.72), Carer (DE.73), Confidant (DE.74)"
* contact.extension[contactIdentifier] ^short = "Identifier type (DE.75) and Document number (DE.76)"

// --- Donor Information (DE.78-95) ---

* extension[donorInformation] ^short = "Blood type (DE.78-82), Rhesus factor (DE.83-85), Type of donation (DE.86-89), Previous donations (DE.90-95)"

// --- Registration of Socioeconomic Profile (DE.132-158) ---

* extension[socioeconomicProfile] ^short = "School Level, Living arrangement, Employment, Household size, Income source and Registration category (DE.132-158)"

// --- Register Relationship (DE.159-164) ---

* extension[familyRelationship] ^short = "Registered family relationship type (DE.159-163) and Newborn flag (DE.164)"

Instance: PatientRegistrationExample
InstanceOf: SISRMEPatient
Title: "Example: SIS-RME Patient Registration"
Description: "An example patient registered via the MOZ.Registration workflow, illustrating a usual name, nickname, estimated age, birth registration status, race, nationality, birthplace, marital status, national document, home address, an emergency contact who is also a carer, blood donor information, socioeconomic profile and a registered family relationship."
Usage: #example
* name[legalName].given[0] = "Amélia"
* name[legalName].given[1] = "Joaquina"
* name[legalName].family = "Machava"
* name[nickname].text = "Mila"
* birthDate = "1994-03-12"
* extension[birthRegistrationStatus].valueCodeableConcept = SISRMEBirthRegistrationStatusCodes#yes "Yes"
* extension[race].valueCodeableConcept = SISRMERaceCodes#black-african-descent "Black or African Descent"
* extension[nationality].extension[code].valueCodeableConcept = $ISO3166#MZ "Mozambique"
* extension[birthPlace].valueAddress.state = "gaza"
* extension[birthPlace].valueAddress.district = "kamubukwana"
* extension[mothersName].valueString = "Fatima Machava"
* extension[fathersName].valueString = "João Machava"
* gender = #female
* maritalStatus = $v3-MaritalStatus#M "Married"
* identifier[nationalDocument].type = SISRMEDocumentType#dire "DIRE (Documento de Identificação e Residência para Estrangeiros)"
* identifier[nationalDocument].value = "12345678A"
* address.line[0] = "Near Bairro Central market"
* address.state = "gaza"
* address.district = "kamubukwana"
* telecom[0].system = #phone
* telecom[0].value = "+258841234567"
* telecom[0].use = #mobile
* telecom[1].system = #email
* telecom[1].value = "amelia.machava@example.org"
* extension[occupation].valueString = "Farmer"
* contact[0].name.text = "Joaquim Machava"
* contact[0].relationship[0] = $v3-RoleCode#SPS "spouse"
* contact[0].address.line[0] = "Near Bairro Central market"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+258849876543"
* contact[0].extension[purpose][0].valueCodeableConcept = SISRMEContactPurposeCodes#emergency-contact "Emergency contact"
* contact[0].extension[purpose][1].valueCodeableConcept = SISRMEContactPurposeCodes#carer "Carer"
* contact[0].extension[contactIdentifier].extension[type].valueCodeableConcept = SISRMEMozambiqueIdentifierType#nuit "NUIT (Número Único de Identificação Tributária / Tax ID)"
* contact[0].extension[contactIdentifier].extension[value].valueString = "100234567"
* extension[donorInformation].extension[bloodGroup].valueCodeableConcept = $SCT#112144000 "Blood group A"
* extension[donorInformation].extension[rhesusFactor].valueCodeableConcept = $SCT#165747007 "RhD positive"
* extension[donorInformation].extension[donationType].valueCodeableConcept = SISRMEDonationType#voluntary "Voluntary donor"
* extension[donorInformation].extension[previousDonations].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[donorInformation].extension[numberOfDonations].valueInteger = 3
* extension[donorInformation].extension[locationOfPreviousDonation].valueString = "Centro de Saúde de Chókwè"
* extension[donorInformation].extension[dateOfLastDonation].valueDate = "2025-11-02"
* identifier[donorNumber].value = "DON-000482"
* extension[socioeconomicProfile].extension[schoolLevel].valueCodeableConcept = SISRMESchoolLevel#secondary "Secondary"
* extension[socioeconomicProfile].extension[livingArrangement].valueCodeableConcept = SISRMELivingArrangement#lives-with-household "Lives in a household/family unit"
* extension[socioeconomicProfile].extension[employmentStatus].valueCodeableConcept = SISRMEEmploymentStatus#informal-employment "Informal employment"
* extension[socioeconomicProfile].extension[householdSize].valueInteger = 4
* extension[socioeconomicProfile].extension[hasIncomeSource].valueCodeableConcept = $v2-0136#Y "Yes"
* extension[socioeconomicProfile].extension[registrationCategory][0].valueCodeableConcept = SISRMERegistrationCategory#blood-donor "Blood Donor"
* extension[familyRelationship][0].extension[relationshipType].valueCodeableConcept = $v3-RoleCode#CHILD "child"
* extension[familyRelationship][0].extension[newborn].valueBoolean = false
