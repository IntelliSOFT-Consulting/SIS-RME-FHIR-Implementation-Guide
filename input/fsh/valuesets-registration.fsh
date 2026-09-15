// ValueSets for the MISAU.Registration (MOZ.Registration) data elements.
// Where a data element's Input Options map cleanly onto an existing
// terminology (SNOMED CT, v2-0203, v3-RoleCode, v2-0136), that system is
// reused directly, composed alongside local codes only where necessary.

ValueSet: SISRMERaceVS
Id: sisrme-race-vs
Title: "SIS-RME Race Value Set"
Description: "Value set for MOZ.Registration.DE.17-23."
* ^experimental = true
* include codes from system SISRMERaceCodes

ValueSet: SISRMEBirthRegistrationStatusVS
Id: sisrme-birth-registration-status-vs
Title: "SIS-RME Birth Registration Status Value Set"
Description: "Value set for MOZ.Registration.DE.10-13."
* ^experimental = true
* include codes from system SISRMEBirthRegistrationStatusCodes

ValueSet: SISRMEDocumentTypeVS
Id: sisrme-document-type-vs
Title: "SIS-RME Identification Document Type"
Description: "Value set for MOZ.Registration.DE.35-42. Passport, Driver's License and Identity Card reuse HL7 v2-0203 Identifier Type codes; the remaining, Mozambique-specific document types are local codes."
* ^experimental = true
* $v2-0203#PPN "Passport number"
* $v2-0203#DL "Driver's license number"
* $v2-0203#NI "National unique individual identifier"
* include codes from system SISRMEDocumentType

ValueSet: SISRMEContactRelationshipVS
Id: sisrme-contact-relationship-vs
Title: "SIS-RME Emergency Contact Relationship"
Description: "Value set for MOZ.Registration.DE.51-67, reusing HL7 v3 RoleCode family-member concepts where a single matching concept exists, and local codes for options that combine two v3 RoleCode concepts (e.g. Uncle/Aunt) or that have no v3 RoleCode equivalent."
* ^experimental = true
* $v3-RoleCode#FTH "father"
* $v3-RoleCode#MTH "mother"
* $v3-RoleCode#GRMTH "grandmother"
* $v3-RoleCode#CHILD "child"
* $v3-RoleCode#SIB "sibling"
* $v3-RoleCode#GRNDCHILD "grandchild"
* $v3-RoleCode#SPS "spouse"
* $v3-RoleCode#COUSN "cousin"
* $v3-RoleCode#SIBINLAW "sibling in-law"
* $v3-RoleCode#SONINLAW "son in-law"
* $v3-RoleCode#PRNINLAW "parent in-law"
* $v3-RoleCode#DAUINLAW "daughter in-law"
* include codes from system SISRMEContactRelationship

ValueSet: SISRMEContactPurposeVS
Id: sisrme-contact-purpose-vs
Title: "SIS-RME Emergency Contact Purpose Value Set"
Description: "Value set for MOZ.Registration.DE.71-74."
* ^experimental = true
* include codes from system SISRMEContactPurposeCodes

ValueSet: SISRMEMozambiqueIdentifierTypeVS
Id: sisrme-mozambique-identifier-type-vs
Title: "SIS-RME Mozambique National Identifier Type Value Set"
Description: "Value set for MOZ.Registration.DE.75."
* ^experimental = true
* include codes from system SISRMEMozambiqueIdentifierType

ValueSet: SISRMEBloodGroupVS
Id: sisrme-blood-group-vs
Title: "SIS-RME ABO Blood Group"
Description: "Value set for MOZ.Registration.DE.78-82, reusing SNOMED CT ABO group findings."
* ^experimental = true
* $SCT#58460004 "Blood group O"
* $SCT#112144000 "Blood group A"
* $SCT#112149005 "Blood group B"
* $SCT#165743006 "Blood group AB"

ValueSet: SISRMERhesusFactorVS
Id: sisrme-rhesus-factor-vs
Title: "SIS-RME Rhesus (Rh) Factor"
Description: "Value set for MOZ.Registration.DE.83-85, reusing SNOMED CT RhD findings."
* ^experimental = true
* $SCT#165747007 "RhD positive"
* $SCT#165746003 "RhD negative"

ValueSet: SISRMEDonationTypeVS
Id: sisrme-donation-type-vs
Title: "SIS-RME Blood Donation Type Value Set"
Description: "Value set for MOZ.Registration.DE.86-89."
* ^experimental = true
* include codes from system SISRMEDonationType

ValueSet: SISRMEVisitStatusVS
Id: sisrme-visit-status-vs
Title: "SIS-RME Visit Status Value Set"
Description: "Value set for MOZ.Registration.DE.97-100."
* ^experimental = true
* include codes from system SISRMEVisitStatusCodes

ValueSet: SISRMEConsultationOutcomeVS
Id: sisrme-consultation-outcome-vs
Title: "SIS-RME Consultation Outcome Value Set"
Description: "Value set for MOZ.Registration.DE.128-131."
* ^experimental = true
* include codes from system SISRMEConsultationOutcomeCodes

ValueSet: SISRMESchoolLevelVS
Id: sisrme-school-level-vs
Title: "SIS-RME School Level Value Set"
Description: "Value set for MOZ.Registration.DE.132-136."
* ^experimental = true
* include codes from system SISRMESchoolLevel

ValueSet: SISRMELivingArrangementVS
Id: sisrme-living-arrangement-vs
Title: "SIS-RME Living Arrangement Value Set"
Description: "Value set for MOZ.Registration.DE.138-140."
* ^experimental = true
* include codes from system SISRMELivingArrangement

ValueSet: SISRMEEmploymentStatusVS
Id: sisrme-employment-status-vs
Title: "SIS-RME Employment Status Value Set"
Description: "Value set for MOZ.Registration.DE.141-144."
* ^experimental = true
* include codes from system SISRMEEmploymentStatus

ValueSet: SISRMERegistrationCategoryVS
Id: sisrme-registration-category-vs
Title: "SIS-RME Socioeconomic Registration Category Value Set"
Description: "Value set for MOZ.Registration.DE.149-158."
* ^experimental = true
* include codes from system SISRMERegistrationCategory

ValueSet: SISRMEFamilyRelationshipTypeVS
Id: sisrme-family-relationship-type-vs
Title: "SIS-RME Registered Family Relationship Type"
Description: "Value set for MOZ.Registration.DE.159-163, reusing HL7 v3 RoleCode concepts where they match directly."
* ^experimental = true
* $v3-RoleCode#MTH "mother"
* $v3-RoleCode#FTH "father"
* $v3-RoleCode#CHILD "child"
* include codes from system SISRMEFamilyRelationshipType

ValueSet: SISRMEProvinceVS
Id: sisrme-province-vs
Title: "SIS-RME Mozambique Province Value Set"
Description: "Value set for MOZ.Registration.DE.31/DE.44."
* ^experimental = true
* include codes from system SISRMEMozambiqueProvince

ValueSet: SISRMEDistrictVS
Id: sisrme-district-vs
Title: "SIS-RME Mozambique District (example)"
Description: "Example value set for MOZ.Registration.DE.32/DE.45. Bound with example strength: implementers should replace this with a binding to a complete, authoritative source of Mozambique districts."
* ^experimental = true
* include codes from system SISRMEDistrictExample
