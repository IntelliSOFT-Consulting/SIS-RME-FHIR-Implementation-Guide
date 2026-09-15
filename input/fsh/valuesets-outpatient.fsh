// ValueSets for MISAU.B (General Outpatient Consultation / program enrollment).

ValueSet: SISRMEProgramAreaVS
Id: sisrme-program-area-vs
Title: "SIS-RME Program Area"
Description: "Value set for MISAU.B.DE1."
* include codes from system SISRMEProgramArea

ValueSet: SISRMEProgramServiceVS
Id: sisrme-program-service-vs
Title: "SIS-RME Program Service"
Description: "Value set for MISAU.B.DE2."
* include codes from system SISRMEProgramService

ValueSet: SISRMEEnrollmentOutcomeVS
Id: sisrme-enrollment-outcome-vs
Title: "SIS-RME Program Enrollment Outcome"
Description: "Value set for the various MISAU.B service enrollment-state tables (ART, PrEP, CCR, CCS, PTV/ETV, CPN, CPP, TB Sensitive, XDR-TB, TPT)."
* include codes from system SISRMEEnrollmentOutcome

ValueSet: SISRMETestingLocationVS
Id: sisrme-testing-location-vs
Title: "SIS-RME Preferred Testing Location"
Description: "Value set for MISAU.B ART Service: Consent Terms."
* include codes from system SISRMETestingLocation

ValueSet: SISRMEContactMethodVS
Id: sisrme-contact-method-vs
Title: "SIS-RME Contact Method"
Description: "Value set for MISAU.B Informed Consent."
* include codes from system SISRMEContactMethod

ValueSet: SISRMEIndexContactKinshipVS
Id: sisrme-index-contact-kinship-vs
Title: "SIS-RME Index Contact Kinship"
Description: "Value set for MISAU.B.DE17-30, reusing the emergency-contact relationship value set from the Registration module (SISRMEContactRelationshipVS) plus additional local kinship codes specific to index contact tracing."
* include codes from valueset SISRMEContactRelationshipVS
* include codes from system SISRMEIndexContactKinship

ValueSet: SISRMEIndexContactHIVStatusVS
Id: sisrme-index-contact-hiv-status-vs
Title: "SIS-RME Index Contact HIV Status"
Description: "Value set for MISAU.B.DE34-39."
* include codes from system SISRMEIndexContactHIVStatus

ValueSet: SISRMECCRRiskConditionVS
Id: sisrme-ccr-risk-condition-vs
Title: "SIS-RME CCR Risk Condition"
Description: "Value set for MISAU.B.DE6-18."
* include codes from system SISRMECCRRiskConditionCodes

ValueSet: SISRMETBProvenanceVS
Id: sisrme-tb-provenance-vs
Title: "SIS-RME TB Case Provenance"
Description: "Value set for MISAU.B.DE43-47."
* include codes from system SISRMETBProvenance

ValueSet: SISRMETBSensitivityTypeVS
Id: sisrme-tb-sensitivity-type-vs
Title: "SIS-RME TB Drug Sensitivity Type"
Description: "Value set for MISAU.B.DE49-50."
* include codes from system SISRMETBSensitivityType
