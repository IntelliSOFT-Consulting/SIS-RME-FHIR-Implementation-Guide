// ValueSets for MISAU.D (MCH Module).

ValueSet: SISRMEPregnancyOutcomeVS
Id: sisrme-pregnancy-outcome-vs
Title: "SIS-RME Previous Pregnancy Outcome"
* include codes from system SISRMEPregnancyOutcome

ValueSet: SISRMEDeliveryTypeVS
Id: sisrme-delivery-type-vs
Title: "SIS-RME Type of Delivery"
* include codes from system SISRMEDeliveryType

ValueSet: SISRMENewbornWeightCategoryVS
Id: sisrme-newborn-weight-category-vs
Title: "SIS-RME Newborn Weight Category (previous pregnancy)"
* include codes from system SISRMENewbornWeightCategory

ValueSet: SISRMEPrenatalRiskFlagVS
Id: sisrme-prenatal-risk-flag-vs
Title: "SIS-RME Prenatal Risk Flag"
* include codes from system SISRMEPrenatalRiskFlag

ValueSet: SISRMEFetalPresentationVS
Id: sisrme-fetal-presentation-vs
Title: "SIS-RME Fetal Presentation"
* include codes from system SISRMEFetalPresentation

ValueSet: SISRMEBodySiteFindingVS
Id: sisrme-body-site-finding-vs
Title: "SIS-RME Body Site / Finding (obstetric examination)"
* include codes from system SISRMEBodySiteFinding

ValueSet: SISRMEPrenatalLabTestVS
Id: sisrme-prenatal-lab-test-vs
Title: "SIS-RME Prenatal Laboratory Test"
* include codes from system SISRMEPrenatalLabTest

ValueSet: SISRMEPrenatalProphylaxisVS
Id: sisrme-prenatal-prophylaxis-vs
Title: "SIS-RME Prenatal Prophylaxis/Treatment"
* include codes from system SISRMEPrenatalProphylaxis

ValueSet: SISRMEAllergyTypeVS
Id: sisrme-allergy-type-vs
Title: "SIS-RME Allergy Type (prenatal)"
* include codes from system SISRMEAllergyType

ValueSet: SISRMEPrenatalVaccineVS
Id: sisrme-prenatal-vaccine-vs
Title: "SIS-RME Prenatal Vaccine"
* include codes from system SISRMEPrenatalVaccine

ValueSet: SISRMEVaccineDoseNumberVS
Id: sisrme-vaccine-dose-number-vs
Title: "SIS-RME Vaccine Dose Number"
* include codes from system SISRMEVaccineDoseNumber

ValueSet: SISRMEBreastfeedingTypeVS
Id: sisrme-breastfeeding-type-vs
Title: "SIS-RME Breastfeeding Type"
* include codes from system SISRMEBreastfeedingType

ValueSet: SISRMESyphilisStatusVS
Id: sisrme-syphilis-status-vs
Title: "SIS-RME Syphilis Status at Admission"
* include codes from system SISRMESyphilisStatus

ValueSet: SISRMEPostpartumMedicationVS
Id: sisrme-postpartum-medication-vs
Title: "SIS-RME Postpartum Medication"
* include codes from system SISRMEPostpartumMedication

ValueSet: SISRMENewbornStatusVS
Id: sisrme-newborn-status-vs
Title: "SIS-RME Newborn Status"
* include codes from system SISRMENewbornStatus

ValueSet: SISRMEFontanelleStatusVS
Id: sisrme-fontanelle-status-vs
Title: "SIS-RME Anterior Fontanelle Status"
* include codes from system SISRMEFontanelleStatus

ValueSet: SISRMENewbornMedicationVS
Id: sisrme-newborn-medication-vs
Title: "SIS-RME Newborn Medication"
* include codes from system SISRMENewbornMedication

ValueSet: SISRMEPediatricDangerSignVS
Id: sisrme-pediatric-danger-sign-vs
Title: "SIS-RME Paediatric General Danger Sign"
* include codes from system SISRMEPediatricDangerSign

ValueSet: SISRMEGCSEyeOpeningVS
Id: sisrme-gcs-eye-opening-vs
Title: "SIS-RME GCS Eye Opening Response"
* include codes from system SISRMEGCSEyeOpening

ValueSet: SISRMEGCSVerbalVS
Id: sisrme-gcs-verbal-vs
Title: "SIS-RME GCS Verbal Response"
* include codes from system SISRMEGCSVerbal

ValueSet: SISRMEGCSMotorVS
Id: sisrme-gcs-motor-vs
Title: "SIS-RME GCS Motor Response"
* include codes from system SISRMEGCSMotor

ValueSet: SISRMEGeneralStateDegreeVS
Id: sisrme-general-state-degree-vs
Title: "SIS-RME General State"
* include codes from system SISRMEGeneralStateDegree

ValueSet: SISRMEBiotypeVS
Id: sisrme-biotype-vs
Title: "SIS-RME Biotype (Somatotype)"
* include codes from system SISRMEBiotype

ValueSet: SISRMEPulseSiteVS
Id: sisrme-pulse-site-vs
Title: "SIS-RME Pulse Assessment Site"
* include codes from system SISRMEPulseSite

ValueSet: SISRMEPulseRhythmVS
Id: sisrme-pulse-rhythm-vs
Title: "SIS-RME Pulse Rhythm"
* include codes from system SISRMEPulseRhythm

ValueSet: SISRMEMalariaConditionVS
Id: sisrme-malaria-condition-vs
Title: "SIS-RME Malaria Diagnosis Code"
Description: "Malaria diagnosis codes, reusing the ICD-10 Malaria chapter (B50-B54) (MISAU.D.DE84, DE188)."
* include codes from system $ICD10 where concept is-a #B50
* include codes from system $ICD10 where concept is-a #B51
* include codes from system $ICD10 where concept is-a #B52
* include codes from system $ICD10 where concept is-a #B53
* include codes from system $ICD10 where concept is-a #B54

ValueSet: SISRMESyphilisConditionVS
Id: sisrme-syphilis-condition-vs
Title: "SIS-RME Syphilis Diagnosis Code"
Description: "Syphilis diagnosis codes, reusing the ICD-10 Syphilis chapter (A50-A53) (MISAU.D.DE88, DE164, DE251)."
* include codes from system $ICD10 where concept is-a #A50
* include codes from system $ICD10 where concept is-a #A51
* include codes from system $ICD10 where concept is-a #A52
* include codes from system $ICD10 where concept is-a #A53
