Instance: HIVVisitBundleExample
InstanceOf: Bundle
Title: "Example: Full HIV Follow-up Visit Bundle"
Description: "An example FHIR transaction Bundle that submits everything recorded during one ART follow-up visit in a single request: the patient's registration, their ART program enrollment, the HIV consultation encounter, the visit's weight, CD4 and viral load observations, and the ART refill prescription. It reuses the standalone examples of each resource, so all cross-references (subject, encounter, episodeOfCare) resolve within the Bundle."
Usage: #example
* type = #transaction
* timestamp = "2026-06-15T09:20:00+02:00"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/Patient/PatientRegistrationExample"
* entry[=].resource = PatientRegistrationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/PatientRegistrationExample"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/EpisodeOfCare/ProgramEnrollmentARTExample"
* entry[=].resource = ProgramEnrollmentARTExample
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/ProgramEnrollmentARTExample"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/Encounter/HIVConsultationExample"
* entry[=].resource = HIVConsultationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/HIVConsultationExample"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/Observation/HIVVitalSignWeightExample"
* entry[=].resource = HIVVitalSignWeightExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVVitalSignWeightExample"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/Observation/HIVVitalSignCD4Example"
* entry[=].resource = HIVVitalSignCD4Example
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVVitalSignCD4Example"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/Observation/HIVVitalSignViralLoadExample"
* entry[=].resource = HIVVitalSignViralLoadExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVVitalSignViralLoadExample"

* entry[+].fullUrl = "http://misau.gov.mz/fhir/sis-rme/MedicationRequest/MedicationRequestARTExample"
* entry[=].resource = MedicationRequestARTExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/MedicationRequestARTExample"
