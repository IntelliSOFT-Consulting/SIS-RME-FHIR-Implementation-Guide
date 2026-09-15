// Local CodeSystems for MISAU.B (General Outpatient Consultation), which in
// the SIS-RME Data Dictionary is actually a program-enrollment / episode
// tracking module spanning HIV/ART, PrEP, MCH sub-services (CCR/CCS/CCD/
// PTV-ETV/CPN/CPP) and TB sub-services (TB Sensitive/XDR-TB/Pediatric TB/
// TPT). Modeled on SISRMEProgramEnrollment (EpisodeOfCare).

CodeSystem: SISRMEProgramArea
Id: sisrme-program-area
Title: "SIS-RME Program Area"
Description: "Department/Program under which a patient is enrolled for outpatient services (MISAU.B.DE1)."
* ^experimental = true
* ^caseSensitive = true
* #hiv "HIV"
* #mch "SMI (Maternal and Child Health)"
* #tb "TB"

CodeSystem: SISRMEProgramService
Id: sisrme-program-service
Title: "SIS-RME Program Service"
Description: "Specific service a patient is enrolled in within a program area (MISAU.B.DE2 and related enrollment-state section headers)."
* ^experimental = true
* ^caseSensitive = true
* #art "ART/TARV (Antiretroviral Therapy)"
* #prep "PrEP (Pre-Exposure Prophylaxis)"
* #ccr "CCR (Child at Risk Consultation)"
* #ccs "CCS (Healthy Child Consultation)"
* #ccd "CCD (Child Sickness Consultation)"
* #tuberculosis "Tuberculosis"
* #tb-sensitive "TB Sensitive"
* #xdr-tb "Drug-Resistant TB (XDR-TB)"
* #pediatric-tb "Pediatric TB"
* #tpt "TPT (TB Preventive Therapy)"
* #ptv-etv "PTV/ETV (Prevention of Mother-to-Child Transmission)"
* #cpn "CPN (Prenatal Consultation)"
* #cpp "CPP (Postpartum Consultation)"

CodeSystem: SISRMEEnrollmentOutcome
Id: sisrme-enrollment-outcome
Title: "SIS-RME Program Enrollment Outcome"
Description: "Consolidated set of the initial/intermediate/terminal enrollment-state concepts used across the ART, PrEP, CCR, CCS, PTV/ETV, CPN, CPP, TB Sensitive, XDR-TB and TPT enrollment-state tables in MISAU.B. The same small set of concepts recurs, with minor wording differences, across every service-specific state table in the source data dictionary; they are consolidated here into one code system rather than duplicated once per service. Applicability of a given code to a given service is documented in SISRMEProgramEnrollmentVS."
* ^experimental = true
* ^caseSensitive = true
* #registered "Registered"
* #active-not-in-programme "Active, not a programme"
* #pregnant "Pregnant"
* #transferred-in "Transferred from another Health Unit"
* #transferred-out "Transferred to another Health Unit"
* #transferred-to-tb-sector "Transferred to TB Sector"
* #transferred-to-ccr "Transferred to CCR (Child at Risk)"
* #transferred-to-ccs "Transferred to Healthy Child Consultation (CCS)"
* #transferred-to-ccd "Transferred to Child Sickness Consultation (CCD)"
* #transferred-to-cpf "Transferred/Discharged by Referral to CPF (Family Planning)"
* #transferred-to-integrated-queries "Transferred to Integrated Queries"
* #treatment-suspended "Treatment Suspended"
* #abandonment "Abandonment"
* #exit-no-further-risk "Exit - No further substantial risk"
* #exit-side-effects "Exit - Side effects"
* #exit-user-preference "Exit - User preference"
* #exit-tested-hiv-positive "Exit - Tested HIV Positive"
* #terminated-pregnancy "Terminated pregnancy"
* #discharged-completed "Discharge/Completed"
* #discharged-high "Discharged - High (Alta)"
* #finished "Finished"
* #cured "Cured"
* #death "Death"
* #to-be-defined "To be defined by MISAU"

CodeSystem: SISRMETestingLocation
Id: sisrme-testing-location
Title: "SIS-RME Preferred Testing Location"
Description: "Preferred location for index-contact HIV testing (MISAU.B, ART Service: Consent Terms)."
* ^experimental = true
* ^caseSensitive = true
* #home "Home"
* #health-unit "Health Unit"

CodeSystem: SISRMEContactMethod
Id: sisrme-contact-method
Title: "SIS-RME Contact Method"
Description: "Method(s) by which an index contact agrees to be contacted (MISAU.B, Informed Consent)."
* ^experimental = true
* ^caseSensitive = true
* #home-visit "Accepts Home Visits"
* #telephone-call "Telephone Call"
* #sms "SMS / Text Message"

CodeSystem: SISRMEIndexContactKinship
Id: sisrme-index-contact-kinship
Title: "SIS-RME Index Contact Kinship (local codes)"
Description: "Degree of kinship options for an index contact (MISAU.B.DE17-30) that have no equivalent in the v3 RoleCode concepts already reused via SISRMEContactRelationshipVS (see sisrme-contact-relationship-vs from the Registration module, reused here)."
* ^experimental = true
* ^caseSensitive = true
* #friend-or-colleague "Friend or Colleague"
* #neighbourhood-leader "Neighbourhood Leader"
* #worker "Worker"
* #neighbour "Neighbour"

CodeSystem: SISRMEIndexContactHIVStatus
Id: sisrme-index-contact-hiv-status
Title: "SIS-RME Index Contact HIV Status"
Description: "HIV testing status/outcome recorded for an index contact (MISAU.B.DE34-39)."
* ^experimental = true
* ^caseSensitive = true
* #hiv-positive-on-art "HIV Positive - on ART"
* #hiv-positive-not-on-art "HIV Positive - not on ART"
* #hiv-negative "HIV Negative"
* #unknown "Unknown"
* #refused-test "Refused Test"
* #not-tested "Not [tested]"

CodeSystem: SISRMECCRRiskConditionCodes
Id: sisrme-ccr-risk-condition
Title: "SIS-RME CCR Risk Condition"
Description: "Risk conditions recorded at enrollment into the Child at Risk Consultation (CCR) service (MISAU.B.DE6-18)."
* ^experimental = true
* ^caseSensitive = true
* #low-birth-weight "Newborn with low birth weight (< 2.5 kg)"
* #prematurity "Prematurity"
* #twins "Twins"
* #formula-feeding "Artificial milk (formula feeding)"
* #early-weaning "Abrupt/early weaning"
* #hiv-exposure "HIV exposure"
* #syphilis-exposure "Syphilis exposure"
* #tb-contact "Contact with tuberculosis"
* #mother-with-hepatitis "Mother with Hepatitis"
* #acute-malnutrition "Acute Malnutrition"
* #absent-mother "Absent mother"
* #deceased-mother "Deceased mother"
* #recent-migration "Recent migration history"
* #other "Other"

CodeSystem: SISRMETBProvenance
Id: sisrme-tb-provenance
Title: "SIS-RME TB Case Provenance"
Description: "Origin from which a TB case/enrollment was detected or referred (MISAU.B.DE43-47, TB Service additional enrollment fields)."
* ^experimental = true
* ^caseSensitive = true
* #same-health-unit "Same Health Unit (internal detection)"
* #another-public-health-unit "Another Public Health Unit"
* #private-provider "Private Provider"
* #community-agent "Community Agent"

CodeSystem: SISRMETBSensitivityType
Id: sisrme-tb-sensitivity-type
Title: "SIS-RME TB Drug Sensitivity Type"
Description: "Drug sensitivity classification of a TB case (MISAU.B.DE49-50, TB Service additional enrollment fields)."
* ^experimental = true
* ^caseSensitive = true
* #drug-sensitive "Drug-Sensitive TB"
* #drug-resistant "Drug-Resistant TB (MDR-TB / XDR-TB)"
