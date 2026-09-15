// Local CodeSystems for the MISAU.Registration (MOZ.Registration) data
// elements whose Input Options have no suitable existing terminology.
// Codes that DO map cleanly to an existing system (SNOMED CT, v2-0203,
// v3-RoleCode, v3-MaritalStatus, v2-0136, AdministrativeGender, ISO 3166,
// UCUM age-units) are reused directly in valuesets-registration.fsh instead
// of being duplicated here.

CodeSystem: SISRMERaceCodes
Id: sisrme-race
Title: "SIS-RME Race"
Description: "Race categories captured at patient registration, as defined by MOZ.Registration.DE.17-23."
* ^experimental = true
* ^caseSensitive = true
* #black-african-descent "Black or African Descent"
* #white "White"
* #asian "Asian"
* #multiracial "Multiracial"
* #indigenous "Indigenous"
* #other "Other"

CodeSystem: SISRMEBirthRegistrationStatusCodes
Id: sisrme-birth-registration-status
Title: "SIS-RME Birth Registration Status"
Description: "Whether a child was registered at the civil registry office (MOZ.Registration.DE.10-13)."
* ^experimental = true
* ^caseSensitive = true
* #yes "Yes"
* #no "No"
* #not-confirmed "Not Confirmed"

CodeSystem: SISRMEDocumentType
Id: sisrme-document-type
Title: "SIS-RME Identification Document Type (local codes)"
Description: "Mozambique-specific identification document types from MOZ.Registration.DE.35-42 that have no equivalent concept in the HL7 v2-0203 Identifier Type code system. Passport, Driver's License and Identity Card are represented instead by v2-0203 codes PPN, DL and NI respectively; see SISRMEDocumentTypeVS."
* ^experimental = true
* ^caseSensitive = true
* #birth-certificate "Birth Certificate"
* #voter-registration-card "Voter Registration Card"
* #dire "DIRE (Documento de Identificação e Residência para Estrangeiros)"
* #no-document "No document"

CodeSystem: SISRMEContactRelationship
Id: sisrme-contact-relationship
Title: "SIS-RME Emergency Contact Relationship (local codes)"
Description: "Emergency contact/companion relationship options from MOZ.Registration.DE.51-67 that combine two HL7 v3 RoleCode concepts into a single selectable option, or that have no v3 RoleCode equivalent. See SISRMEContactRelationshipVS for the full binding, which also reuses v3 RoleCode concepts directly (FTH, MTH, GRMTH, CHILD, SIB, GRNDCHILD, SPS, COUSN, SIBINLAW, SONINLAW, PRNINLAW, DAUINLAW)."
* ^experimental = true
* ^caseSensitive = true
* #uncle-aunt "Uncle/Aunt"
* #nephew-niece "Nephew/Niece"
* #co-sibling-in-law "Co-sister-in-law / Co-brother-in-law"
* #other "Other"

CodeSystem: SISRMEContactPurposeCodes
Id: sisrme-contact-purpose
Title: "SIS-RME Emergency Contact Purpose"
Description: "The role(s) a registered contact plays for the patient (MOZ.Registration.DE.71-74). A single contact may hold more than one purpose."
* ^experimental = true
* ^caseSensitive = true
* #companion "Companion"
* #emergency-contact "Emergency contact"
* #carer "Carer"
* #confidant "Confidant"

CodeSystem: SISRMEMozambiqueIdentifierType
Id: sisrme-mozambique-identifier-type
Title: "SIS-RME Mozambique National Identifier Type"
Description: "Mozambique-specific identifier types for a registered contact (MOZ.Registration.DE.75): the legacy National ID (Old NID), Tax ID (NUIT) and National Unique Citizen Identifier (NUIC)."
* ^experimental = true
* ^caseSensitive = true
* #old-nid "Old NID (National Identity Document)"
* #nuit "NUIT (Número Único de Identificação Tributária / Tax ID)"
* #nuic "NUIC (Número Único de Identificação do Cidadão / Citizen ID)"

CodeSystem: SISRMEDonationType
Id: sisrme-donation-type
Title: "SIS-RME Blood Donation Type"
Description: "Type of blood donation from MOZ.Registration.DE.86-89."
* ^experimental = true
* ^caseSensitive = true
* #replacement "Replacement donor"
* #screened "Screened donor"
* #voluntary "Voluntary donor"

CodeSystem: SISRMEVisitStatusCodes
Id: sisrme-visit-status
Title: "SIS-RME Visit Status"
Description: "The patient's current status within an outpatient visit/queue (MOZ.Registration.DE.97-100)."
* ^experimental = true
* ^caseSensitive = true
* #on-hold "On hold"
* #triaged "Triaged"
* #under-observation "Under observation"

CodeSystem: SISRMEConsultationOutcomeCodes
Id: sisrme-consultation-outcome
Title: "SIS-RME Consultation Outcome"
Description: "Outcome of a consultation/visit (MOZ.Registration.DE.128-131). 'Discharged' corresponds to the source term 'High' (Portuguese 'Alta')."
* ^experimental = true
* ^caseSensitive = true
* #discharged "Discharged"
* #transferred "Transferred"
* #absent "Absent"

CodeSystem: SISRMESchoolLevel
Id: sisrme-school-level
Title: "SIS-RME School Level"
Description: "Highest level of education attained (MOZ.Registration.DE.132-136)."
* ^experimental = true
* ^caseSensitive = true
* #none "None"
* #primary "Primary"
* #secondary "Secondary"
* #university "University"

CodeSystem: SISRMELivingArrangement
Id: sisrme-living-arrangement
Title: "SIS-RME Living Arrangement"
Description: "Household living arrangement (MOZ.Registration.DE.138-140)."
* ^experimental = true
* ^caseSensitive = true
* #lives-alone "Lives alone"
* #lives-with-household "Lives in a household/family unit"

CodeSystem: SISRMEEmploymentStatus
Id: sisrme-employment-status
Title: "SIS-RME Employment Status"
Description: "Employment status (MOZ.Registration.DE.141-144)."
* ^experimental = true
* ^caseSensitive = true
* #unemployed "Unemployed"
* #formal-employment "Formal employment"
* #informal-employment "Informal employment"

CodeSystem: SISRMERegistrationCategory
Id: sisrme-registration-category
Title: "SIS-RME Socioeconomic Registration Category"
Description: "Beneficiary/exemption categories a patient may be registered under (MOZ.Registration.DE.149-158). More than one category may apply."
* ^experimental = true
* ^caseSensitive = true
* #unemployed-indigent "Unemployed or Indigent"
* #spouse-of-beneficiary "Spouse of Beneficiary"
* #blood-donor "Blood Donor"
* #chronic-patient "Chronic Patient"
* #domestic-worker "Domestic Worker"
* #boarding-student "Boarding Student"
* #aged-60-plus "Aged 60 years or older"
* #unable-to-work "Unable to work"
* #retiree-pensioner "Retirees and Pensioners"

CodeSystem: SISRMEFamilyRelationshipType
Id: sisrme-family-relationship-type
Title: "SIS-RME Registered Family Relationship Type (local codes)"
Description: "Relationship types from MOZ.Registration.DE.159-163 without a suitable v3 RoleCode equivalent. Mother, Father and Son/Daughter are represented instead by v3 RoleCode concepts MTH, FTH and CHILD; see SISRMEFamilyRelationshipTypeVS."
* ^experimental = true
* ^caseSensitive = true
* #partner "Partner"

CodeSystem: SISRMEMozambiqueProvince
Id: sisrme-mozambique-province
Title: "SIS-RME Mozambique Province"
Description: "The 11 provinces of Mozambique (MOZ.Registration.DE.31/DE.44), used until a linkage to an authoritative administrative boundaries source is established."
* ^experimental = true
* ^caseSensitive = true
* #cabo-delgado "Cabo Delgado"
* #niassa "Niassa"
* #nampula "Nampula"
* #zambezia "Zambézia"
* #tete "Tete"
* #manica "Manica"
* #sofala "Sofala"
* #inhambane "Inhambane"
* #gaza "Gaza"
* #maputo-province "Maputo Province"
* #maputo-city "Maputo City"

CodeSystem: SISRMEDistrictExample
Id: sisrme-district-example
Title: "SIS-RME District (example codes)"
Description: "A small, non-exhaustive sample of Mozambique districts (MOZ.Registration.DE.32/DE.45) for illustration. The full ~154-district list should be sourced from an authoritative administrative boundaries system rather than maintained by hand in this IG; SISRMEDistrictVS is therefore bound with example strength."
* ^experimental = true
* ^caseSensitive = true
* #kamubukwana "KaMubukwana"
* #kampfumu "KaMpfumu"
* #matola "Matola"
* #beira "Beira"
* #nampula-cidade "Nampula (Cidade)"
* #pemba "Pemba"
