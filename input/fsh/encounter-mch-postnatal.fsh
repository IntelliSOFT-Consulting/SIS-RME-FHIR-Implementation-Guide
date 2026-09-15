// Profile: SISRMEPostnatalConsultation
// Covers MISAU.D "POSTNATAL CONSULTATION": maternal postpartum assessment
// (diagnosis, malaria/syphilis/HIV/TB screening, family planning,
// prescription) and newborn assessment/screening/vaccination/prescription.
// See SISRMENewbornAssessment for a note on the newborn-vs-mother subject
// modeling simplification. Vital signs/anthropometrics (including for the
// newborn) are recorded as SISRMEMCHVitalSign Observations referencing
// this Encounter.

Profile: SISRMEPostnatalConsultation
Parent: Encounter
Id: sisrme-postnatal-consultation
Title: "SIS-RME Postnatal Consultation"
Description: "A postnatal (postpartum) consultation visit for mother and newborn, per SIS-RME Data Dictionary module D (MCH Module)."
* ^experimental = true

* subject 1..1 MS
* subject only Reference(SISRMEPatient)
* status MS

* extension contains
    SISRMEMaternalPostpartumAssessment named maternalAssessment 0..1 MS and
    SISRMEPostpartumMalariaAssessment named malariaAssessment 0..1 MS and
    SISRMEPostpartumSyphilisAssessment named syphilisAssessment 0..1 MS and
    SISRMEPostpartumHIVAssessment named hivAssessment 0..1 MS and
    SISRMEPostpartumTBAssessment named tbAssessment 0..1 MS and
    SISRMEPostpartumFamilyPlanning named familyPlanning 0..1 MS and
    SISRMEPostpartumLabAndTreatmentSummary named labAndTreatmentSummary 0..1 MS and
    SISRMEPostpartumMedicationPrescribed named medicationPrescribed 0..* MS and
    SISRMENewbornAssessment named newbornAssessment 0..1 MS and
    SISRMENewbornInfectionScreening named newbornInfectionScreening 0..1 MS and
    SISRMENewbornVaccination named newbornVaccination 0..1 MS and
    SISRMENewbornLabAndConductPlan named newbornLabAndConductPlan 0..1 MS and
    SISRMENewbornMedicationPrescribed named newbornMedicationPrescribed 0..* MS

* extension[maternalAssessment] ^short = "Postpartum diagnosis, breastfeeding, nutrition (DE75-81)"
* extension[malariaAssessment] ^short = "Malaria screening/diagnosis (DE82-84)"
* extension[syphilisAssessment] ^short = "Syphilis screening/diagnosis (DE85-89)"
* extension[hivAssessment] ^short = "HIV status/ART/screening (DE90-96)"
* extension[tbAssessment] ^short = "TB screening/diagnosis (DE97-98)"
* extension[familyPlanning] ^short = "Family Planning counselling and method (DE99-101)"
* extension[labAndTreatmentSummary] ^short = "Laboratory Test Requested, Treatment Performed, Observations (DE102-105)"
* extension[medicationPrescribed] ^short = "Prescription, for the mother (DE106-121)"
* extension[newbornAssessment] ^short = "Newborn clinical assessment (DE146-160)"
* extension[newbornInfectionScreening] ^short = "Newborn syphilis/TB/HIV screening (DE161-168)"
* extension[newbornVaccination] ^short = "Newborn BCG/OPV vaccination (DE169-173)"
* extension[newbornLabAndConductPlan] ^short = "Newborn lab request and conduct plan (DE174-175)"
* extension[newbornMedicationPrescribed] ^short = "Newborn prescription (DE176-180)"

Instance: PostnatalConsultationExample
InstanceOf: SISRMEPostnatalConsultation
Title: "Example: SIS-RME Postnatal Consultation"
Description: "An example postnatal visit for the example patient and her newborn, one week after an institutional delivery."
Usage: #example
* subject = Reference(PatientRegistrationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* extension[maternalAssessment].extension[postpartumDiagnosis].valueString = "Uncomplicated puerperium"
* extension[maternalAssessment].extension[currentlyBreastfeeding].valueBoolean = true
* extension[maternalAssessment].extension[breastfeedingType].valueCodeableConcept = SISRMEBreastfeedingType#exclusive "Exclusive Breastfeeding"
* extension[hivAssessment].extension[seroStatusAtAdmission].valueCodeableConcept = SISRMEIndexContactHIVStatus#hiv-negative "HIV Negative"
* extension[hivAssessment].extension[screeningPerformed].valueBoolean = true
* extension[hivAssessment].extension[screeningResult].valueCodeableConcept = SISRMEIndexContactHIVStatus#hiv-negative "HIV Negative"
* extension[familyPlanning].extension[counsellingPerformed].valueBoolean = true
* extension[familyPlanning].extension[methodInitiated].valueCodeableConcept = SISRMEFamilyPlanningMethod#injectable "Injectable"
* extension[newbornAssessment].extension[newbornStatus].valueCodeableConcept = SISRMENewbornStatus#normal "Normal"
* extension[newbornAssessment].extension[jaundicePresent].valueBoolean = false
* extension[newbornAssessment].extension[suckingWell].valueBoolean = true
* extension[newbornVaccination].extension[bcgGiven].valueBoolean = true
* extension[newbornVaccination].extension[bcgDate].valueDate = "2026-06-08"
* extension[newbornVaccination].extension[opvGiven].valueBoolean = true
* extension[newbornVaccination].extension[opvDate].valueDate = "2026-06-08"
