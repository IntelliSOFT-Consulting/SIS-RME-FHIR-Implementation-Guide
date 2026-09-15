// ValueSets for MISAU.B (General Outpatient Consultation / program enrollment).

ValueSet: SISRMEProgramAreaVS
Id: sisrme-program-area-vs
Title: "SIS-RME Program Area Value Set"
Description: "Value set for MISAU.B.DE1."
* ^experimental = true
* include codes from system SISRMEProgramArea

ValueSet: SISRMEProgramServiceVS
Id: sisrme-program-service-vs
Title: "SIS-RME Program Service Value Set"
Description: "Value set for MISAU.B.DE2."
* ^experimental = true
* include codes from system SISRMEProgramService

ValueSet: SISRMEEnrollmentOutcomeVS
Id: sisrme-enrollment-outcome-vs
Title: "SIS-RME Program Enrollment Outcome Value Set"
Description: "Value set for the various MISAU.B service enrollment-state tables (ART, PrEP, CCR, CCS, PTV/ETV, CPN, CPP, TB Sensitive, XDR-TB, TPT)."
* ^experimental = true
* include codes from system SISRMEEnrollmentOutcome

ValueSet: SISRMETestingLocationVS
Id: sisrme-testing-location-vs
Title: "SIS-RME Preferred Testing Location Value Set"
Description: "Value set for MISAU.B ART Service: Consent Terms."
* ^experimental = true
* include codes from system SISRMETestingLocation

ValueSet: SISRMEContactMethodVS
Id: sisrme-contact-method-vs
Title: "SIS-RME Contact Method Value Set"
Description: "Value set for MISAU.B Informed Consent."
* ^experimental = true
* include codes from system SISRMEContactMethod

ValueSet: SISRMEIndexContactKinshipVS
Id: sisrme-index-contact-kinship-vs
Title: "SIS-RME Index Contact Kinship"
Description: "Value set for MISAU.B.DE17-30, reusing the emergency-contact relationship value set from the Registration module (SISRMEContactRelationshipVS) plus additional local kinship codes specific to index contact tracing."
* ^experimental = true
* include codes from valueset SISRMEContactRelationshipVS
* include codes from system SISRMEIndexContactKinship

ValueSet: SISRMEIndexContactHIVStatusVS
Id: sisrme-index-contact-hiv-status-vs
Title: "SIS-RME Index Contact HIV Status Value Set"
Description: "Value set for MISAU.B.DE34-39."
* ^experimental = true
* include codes from system SISRMEIndexContactHIVStatus

ValueSet: SISRMECCRRiskConditionVS
Id: sisrme-ccr-risk-condition-vs
Title: "SIS-RME CCR Risk Condition Value Set"
Description: "Value set for MISAU.B.DE6-18."
* ^experimental = true
* include codes from system SISRMECCRRiskConditionCodes

ValueSet: SISRMETBProvenanceVS
Id: sisrme-tb-provenance-vs
Title: "SIS-RME TB Case Provenance Value Set"
Description: "Value set for MISAU.B.DE43-47."
* ^experimental = true
* include codes from system SISRMETBProvenance

ValueSet: SISRMETBSensitivityTypeVS
Id: sisrme-tb-sensitivity-type-vs
Title: "SIS-RME TB Drug Sensitivity Type Value Set"
Description: "Value set for MISAU.B.DE49-50."
* ^experimental = true
* include codes from system SISRMETBSensitivityType
