// Profile: SISRMEAppointment
// Covers MISAU.G "Schedule Appointment": triage/priority, department and
// service selection, admission type and transfer origin, exemption
// reasons, donor information, visit status, and appointment
// cancellation/rescheduling. Patient demographic fields (NID, Full Name,
// Date of Birth, Age, Sex, Address, DE1-6) duplicate SISRMEPatient and are
// not re-modeled here.

Profile: SISRMEAppointment
Parent: Appointment
Id: sisrme-appointment
Title: "SIS-RME Appointment"
Description: "A scheduled patient appointment/admission, per SIS-RME Data Dictionary module G (General Module, Schedule Appointment)."

* status MS
* serviceType 0..* MS
* serviceType ^short = "Service (DE16)"
* specialty 0..* MS
* specialty ^short = "Department (DE15)"
* description 0..1 MS
* description ^short = "Reason for Admission (DE23), if not separately coded"
* start 0..1 MS
* start ^short = "Date of Consultation (DE17); Service Time (DE14)"
* created 0..1 MS
* created ^short = "Registration Date (DE7)"
* participant 1..* MS
* participant.actor 1..1 MS
* participant.actor only Reference(SISRMEPatient)
* participant.status MS

* extension contains
    SISRMETriagePriorityExt named triagePriority 0..1 MS and
    SISRMEExemptionReasonExt named exemptionReason 0..* MS and
    SISRMEDonorInformationRef named donorInformation 0..1 MS and
    SISRMEAppointmentTransferOrigin named transferOrigin 0..1 MS and
    SISRMEVisitStatusGeneral named visitStatus 0..1 MS and
    SISRMEAppointmentRemoval named removal 0..1 MS and
    SISRMEAdmissionDetails named admissionDetails 0..1 MS

* priority 0..1 MS
* priority ^short = "Numeric priority; see extension for the coded Priority Level (DE8-13)"

* extension[triagePriority] ^short = "Priority Level (DE8-13)"
* extension[exemptionReason] ^short = "Reason for Exemption (DE25-35)"
* extension[donorInformation] ^short = "Donor Information, AMM Membership Card Number (DE36-37)"
* extension[transferOrigin] ^short = "Province/District/Health Unit (Transfer), Reference Guide Number (DE19-22)"
* extension[visitStatus] ^short = "Screening Status, Visit Status (DE39-40)"
* extension[removal] ^short = "Removal Reason, Reschedule/Cancel details (DE41-50)"
* extension[admissionDetails] ^short = "Admission Type, Reason for Admission, Cost (DE18, DE23-24)"

Instance: AppointmentExample
InstanceOf: SISRMEAppointment
Title: "Example: SIS-RME Appointment"
Description: "An example urgent general-consultation appointment for the example patient."
Usage: #example
* status = #booked
* serviceType.text = "General Consultation"
* specialty.text = "General Medicine"
* start = "2026-06-15T08:00:00+02:00"
* created = "2026-06-14T16:30:00+02:00"
* participant[0].actor = Reference(PatientRegistrationExample)
* participant[0].status = #accepted
* extension[triagePriority].valueCodeableConcept = SISRMETriagePriority#urgent "Urgent"
* extension[visitStatus].extension[visitStatus].valueCodeableConcept = SISRMEGeneralVisitStatus#triaged "Triaged"
* extension[admissionDetails].extension[admissionType].valueString = "Outpatient"
* extension[admissionDetails].extension[reasonForAdmission].valueString = "Persistent cough and fever"
