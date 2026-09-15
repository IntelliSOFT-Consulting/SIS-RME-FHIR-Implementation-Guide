// ValueSets for the MISAU.Registration (MOZ.Registration) data elements.
// Where a data element's Input Options map cleanly onto an existing
// terminology (SNOMED CT, v2-0203, v3-RoleCode, v2-0136), that system is
// reused directly, composed alongside local codes only where necessary.

ValueSet: SISRMERaceVS
Id: sisrme-race-vs
Title: "SIS-RME Race"
Description: "Value set for MOZ.Registration.DE.17-23."
* include codes from system SISRMERaceCodes

ValueSet: SISRMEBirthRegistrationStatusVS
Id: sisrme-birth-registration-status-vs
Title: "SIS-RME Birth Registration Status"
Description: "Value set for MOZ.Registration.DE.10-13."
* include codes from system SISRMEBirthRegistrationStatusCodes

ValueSet: SISRMEDocumentTypeVS
Id: sisrme-document-type-vs
Title: "SIS-RME Identification Document Type"
Description: "Value set for MOZ.Registration.DE.35-42. Passport, Driver's License and Identity Card reuse HL7 v2-0203 Identifier Type codes; the remaining, Mozambique-specific document types are local codes."
* $v2-0203#PPN "Passport number"
* $v2-0203#DL "Driver's license number"
* $v2-0203#NI "National unique individual identifier"
* include codes from system SISRMEDocumentType

ValueSet: SISRMEContactRelationshipVS
Id: sisrme-contact-relationship-vs
Title: "SIS-RME Emergency Contact Relationship"
Description: "Value set for MOZ.Registration.DE.51-67, reusing HL7 v3 RoleCode family-member concepts where a single matching concept exists, and local codes for options that combine two v3 RoleCode concepts (e.g. Uncle/Aunt) or that have no v3 RoleCode equivalent."
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
Title: "SIS-RME Emergency Contact Purpose"
Description: "Value set for MOZ.Registration.DE.71-74."
* include codes from system SISRMEContactPurposeCodes

ValueSet: SISRMEMozambiqueIdentifierTypeVS
Id: sisrme-mozambique-identifier-type-vs
Title: "SIS-RME Mozambique National Identifier Type"
Description: "Value set for MOZ.Registration.DE.75."
* include codes from system SISRMEMozambiqueIdentifierType

ValueSet: SISRMEBloodGroupVS
Id: sisrme-blood-group-vs
Title: "SIS-RME ABO Blood Group"
Description: "Value set for MOZ.Registration.DE.78-82, reusing SNOMED CT ABO group findings."
* $SCT#58460004 "Blood group O"
* $SCT#112144000 "Blood group A"
* $SCT#112149005 "Blood group B"
* $SCT#165743006 "Blood group AB"

ValueSet: SISRMERhesusFactorVS
Id: sisrme-rhesus-factor-vs
Title: "SIS-RME Rhesus (Rh) Factor"
Description: "Value set for MOZ.Registration.DE.83-85, reusing SNOMED CT RhD findings."
* $SCT#165747007 "RhD positive"
* $SCT#165746003 "RhD negative"

ValueSet: SISRMEDonationTypeVS
Id: sisrme-donation-type-vs
Title: "SIS-RME Blood Donation Type"
Description: "Value set for MOZ.Registration.DE.86-89."
* include codes from system SISRMEDonationType

ValueSet: SISRMEVisitStatusVS
Id: sisrme-visit-status-vs
Title: "SIS-RME Visit Status"
Description: "Value set for MOZ.Registration.DE.97-100."
* include codes from system SISRMEVisitStatusCodes

ValueSet: SISRMEConsultationOutcomeVS
Id: sisrme-consultation-outcome-vs
Title: "SIS-RME Consultation Outcome"
Description: "Value set for MOZ.Registration.DE.128-131."
* include codes from system SISRMEConsultationOutcomeCodes

ValueSet: SISRMESchoolLevelVS
Id: sisrme-school-level-vs
Title: "SIS-RME School Level"
Description: "Value set for MOZ.Registration.DE.132-136."
* include codes from system SISRMESchoolLevel

ValueSet: SISRMELivingArrangementVS
Id: sisrme-living-arrangement-vs
Title: "SIS-RME Living Arrangement"
Description: "Value set for MOZ.Registration.DE.138-140."
* include codes from system SISRMELivingArrangement

ValueSet: SISRMEEmploymentStatusVS
Id: sisrme-employment-status-vs
Title: "SIS-RME Employment Status"
Description: "Value set for MOZ.Registration.DE.141-144."
* include codes from system SISRMEEmploymentStatus

ValueSet: SISRMERegistrationCategoryVS
Id: sisrme-registration-category-vs
Title: "SIS-RME Socioeconomic Registration Category"
Description: "Value set for MOZ.Registration.DE.149-158."
* include codes from system SISRMERegistrationCategory

ValueSet: SISRMEFamilyRelationshipTypeVS
Id: sisrme-family-relationship-type-vs
Title: "SIS-RME Registered Family Relationship Type"
Description: "Value set for MOZ.Registration.DE.159-163, reusing HL7 v3 RoleCode concepts where they match directly."
* $v3-RoleCode#MTH "mother"
* $v3-RoleCode#FTH "father"
* $v3-RoleCode#CHILD "child"
* include codes from system SISRMEFamilyRelationshipType

ValueSet: SISRMEProvinceVS
Id: sisrme-province-vs
Title: "SIS-RME Mozambique Province"
Description: "Value set for MOZ.Registration.DE.31/DE.44."
* include codes from system SISRMEMozambiqueProvince

ValueSet: SISRMEDistrictVS
Id: sisrme-district-vs
Title: "SIS-RME Mozambique District (example)"
Description: "Example value set for MOZ.Registration.DE.32/DE.45. Bound with example strength: implementers should replace this with a binding to a complete, authoritative source of Mozambique districts."
* include codes from system SISRMEDistrictExample
