// Local CodeSystems for MISAU.D (MCH Module: Prenatal, Postnatal and
// Paediatric Consultation). Given this module's large size (~309 data
// elements) and numerous small "select one/select all" checklists, related
// checklist options are grouped under one CodeSystem per checklist rather
// than one CodeSystem per individual flag, consistent with the approach
// used for MISAU.F (TB Module).

CodeSystem: SISRMEPregnancyOutcome
Id: sisrme-pregnancy-outcome
Title: "SIS-RME Previous Pregnancy Outcome"
Description: "Outcome of a previous pregnancy (MISAU.D, Obstetric History)."
* ^experimental = true
* ^caseSensitive = true
* #live-birth "Live birth"
* #stillborn "Stillborn"
* #miscarriage "Miscarriage"
* #abortion "Abortion"
* #ectopic "Ectopic pregnancy"

CodeSystem: SISRMEDeliveryType
Id: sisrme-delivery-type
Title: "SIS-RME Type of Delivery"
Description: "Type of a previous delivery (MISAU.D, Obstetric History)."
* ^experimental = true
* ^caseSensitive = true
* #eutocic "Eutocic (spontaneous vaginal)"
* #assisted-sucker "Assisted (Sucker/vacuum)"
* #cesarean-section "Cesarean section"
* #other-dystocia "Other Dystocia"

CodeSystem: SISRMENewbornWeightCategory
Id: sisrme-newborn-weight-category
Title: "SIS-RME Newborn Weight Category (previous pregnancy)"
Description: "Newborn weight category from a previous pregnancy (MISAU.D, Obstetric History)."
* ^experimental = true
* ^caseSensitive = true
* #under-2500g "Weight < 2500 g"
* #over-4000g "Weight > 4000 g"

CodeSystem: SISRMEPrenatalRiskFlag
Id: sisrme-prenatal-risk-flag
Title: "SIS-RME Prenatal Risk Flag"
Description: "Risk factors screened for at prenatal consultation (MISAU.D, Obstetric History)."
* ^experimental = true
* ^caseSensitive = true
* #primigravida-under-16 "Primigravida Under 16 Years"
* #seizures-outside-pregnancy "Had Seizures Outside Pregnancy"
* #losing-weight "Losing Weight"
* #contact-with-tb-patient "Contact with TB Patient"
* #cough-phlegm-3-weeks "Cough and Phlegm > 3 Weeks"
* #has-tb-on-treatment "Has TB and Undergoing Treatment"
* #polydipsia-polyuria "Very Hungry, Thirsty, Frequent Urination (possible diabetes)"
* #dysuria "Pain or Frequent Urination"

CodeSystem: SISRMEFetalPresentation
Id: sisrme-fetal-presentation
Title: "SIS-RME Fetal Presentation"
Description: "Fetal presentation at prenatal examination (MISAU.D, Obstetric Examination)."
* ^experimental = true
* ^caseSensitive = true
* #cephalic "Cephalic"
* #pelvic "Pelvic"
* #transverse "Transverse"
* #indeterminate "Indeterminate"

CodeSystem: SISRMEBodySiteFinding
Id: sisrme-body-site-finding
Title: "SIS-RME Body Site / Finding (obstetric examination)"
Description: "A body site or examination finding recorded during a prenatal obstetric examination (MISAU.D, Obstetric Examination): oedema location, anterior region findings, breast findings, genital ulcer/condyloma location, cervical lesion type, and discharge type. Grouped into one code system as they are all short, mutually-distinguishable examination-finding checklists within the same clinical section."
* ^experimental = true
* ^caseSensitive = true
* #oedema-feet "Oedema: Feet"
* #oedema-hand "Oedema: Hand"
* #oedema-ankle "Oedema: Ankle"
* #oedema-face "Oedema: Face"
* #anterior-region-injuries "Anterior region: Injuries"
* #anterior-region-itching "Anterior region: Itching"
* #anterior-region-pigmentary-changes "Anterior region: Pigmentary changes"
* #breast-nodule "Breast: Nodule"
* #breast-pain "Breast: Pain"
* #breast-colostrum "Breast: Colostrum"
* #ulcer-location-vulva "Ulcer/lesion location: Vulva"
* #ulcer-location-vagina "Ulcer/lesion location: Vagina"
* #ulcer-location-cervix "Ulcer/lesion location: Cervix"
* #ulcer-location-perianal "Ulcer/lesion location: Perianal"
* #cervical-erosion "Cervical lesion: Cervical erosion"
* #cervical-ectopia "Cervical lesion: Ectopia"
* #cervical-ulcer "Cervical lesion: Ulcer"
* #cervical-friability "Cervical lesion: Friability"
* #discharge-yellowish "Discharge: Yellowish"
* #discharge-whitish "Discharge: Whitish"
* #discharge-sparkling "Discharge: Sparkling"
* #discharge-purulent "Discharge: Purulent"
* #discharge-foul-smelling "Discharge: Foul-smelling"

CodeSystem: SISRMEPrenatalLabTest
Id: sisrme-prenatal-lab-test
Title: "SIS-RME Prenatal Laboratory Test"
Description: "Laboratory tests requested at a prenatal consultation (MISAU.D, Laboratory Requests)."
* ^experimental = true
* ^caseSensitive = true
* #rapid-hiv-test "Rapid HIV Test"
* #syphilis-rapid-vdrl "Syphilis Test - Rapid/VDRL"
* #haemoglobin "Haemoglobin"
* #blood-sugar "Blood Sugar"
* #blood-group-rh "Blood Group and Rh Factor"
* #urine-ii "Urine II"
* #malaria-rdt-microscopy "Malaria Test - RDT / Microscopy"
* #hiv-viral-load "HIV Viral Load"
* #cd4-count "CD4 Count"

CodeSystem: SISRMEPrenatalProphylaxis
Id: sisrme-prenatal-prophylaxis
Title: "SIS-RME Prenatal Prophylaxis/Treatment"
Description: "Prophylaxis/treatment medications prescribed at a prenatal consultation (MISAU.D, Prophylaxis & treatment)."
* ^experimental = true
* ^caseSensitive = true
* #benzathine-penicillin "Benzathine Penicillin"
* #ferrous-folic-acid "Ferrous Salt + Folic Acid"
* #nutritional-supplements "Nutritional Supplements"
* #mebendazole "Mebendazole"
* #sulfadoxine-pyrimethamine "Sulfadoxine/Pyrimethamine (SP)"
* #misoprostol "Misoprostol"
* #cotrimoxazole "Cotrimoxazole / CTZ"
* #azt "AZT (Zidovudine)"
* #nevirapine "Nevirapine / NVP"

CodeSystem: SISRMEAllergyType
Id: sisrme-allergy-type
Title: "SIS-RME Allergy Type (prenatal)"
Description: "Allergies recorded at a prenatal consultation (MISAU.D, Allergy)."
* ^experimental = true
* ^caseSensitive = true
* #cotrimoxazole "Cotrimoxazole Allergy"
* #penicillin "Penicillin Allergy"
* #sulfadoxine-pyrimethamine "Sulfadoxine/Pyrimethamine Allergy"
* #other "Other Allergy"

CodeSystem: SISRMEPrenatalVaccine
Id: sisrme-prenatal-vaccine
Title: "SIS-RME Prenatal Vaccine"
Description: "Vaccines administered during pregnancy (MISAU.D, Vaccination)."
* ^experimental = true
* ^caseSensitive = true
* #tetanus-toxoid "Tetanus Toxoid (VAT)"
* #malaria-vaccine "Malaria Vaccine (TIP)"

CodeSystem: SISRMEVaccineDoseNumber
Id: sisrme-vaccine-dose-number
Title: "SIS-RME Vaccine Dose Number"
Description: "Dose number in a vaccination series (MISAU.D, Vaccination)."
* ^experimental = true
* ^caseSensitive = true
* #"1" "1st dose"
* #"2" "2nd dose"
* #"3" "3rd dose"
* #"4" "4th dose"
* #"5" "5th dose"

CodeSystem: SISRMEBreastfeedingType
Id: sisrme-breastfeeding-type
Title: "SIS-RME Breastfeeding Type"
Description: "Type of breastfeeding (MISAU.D, Postnatal Consultation)."
* ^experimental = true
* ^caseSensitive = true
* #exclusive "Exclusive Breastfeeding"
* #mixed "Mixed Breastfeeding"
* #artificial "Artificial feeding"

CodeSystem: SISRMESyphilisStatus
Id: sisrme-syphilis-status
Title: "SIS-RME Syphilis Status at Admission"
Description: "Syphilis serologic status at admission for postnatal care (MISAU.D, Postnatal Consultation)."
* ^experimental = true
* ^caseSensitive = true
* #unknown "Unknown"
* #negative-recent "Negative for less than 3 months"
* #positive "Positive"

CodeSystem: SISRMEPostpartumMedication
Id: sisrme-postpartum-medication
Title: "SIS-RME Postpartum Medication"
Description: "Medications prescribed postpartum (MISAU.D, Postnatal Consultation, Prescription)."
* ^experimental = true
* ^caseSensitive = true
* #artemether-lumefantrine "Artemether-Lumefantrine"
* #artesunate-amodiaquine "Artesunate-Amodiaquine"
* #quinine-oral "Quinine Oral"
* #artesunate-parenteral "Artesunate Parenteral"
* #quinine-parenteral "Quinine Parenteral"
* #benzathine-penicillin "Benzathine Penicillin"
* #doxycycline "Doxycycline"
* #erythromycin "Erythromycin"
* #ferrous-folic-acid "Ferrous Salt + Folic Acid"
* #paracetamol "Paracetamol"
* #ibuprofen "Ibuprofen"
* #diclofenac "Diclofenac"
* #indomethacin "Indomethacin"
* #plumpy-sup "Plumpy'Sup / ASPU"
* #csb-plus "Corn-Soybean Mixture / CSB+"
* #vitamin-a "Vitamin A / Axeroftol"

CodeSystem: SISRMENewbornStatus
Id: sisrme-newborn-status
Title: "SIS-RME Newborn Status"
Description: "Overall newborn status at postnatal assessment (MISAU.D, Postnatal Consultation)."
* ^experimental = true
* ^caseSensitive = true
* #normal "Normal"
* #sick-pathological "Sick / Pathological"

CodeSystem: SISRMEFontanelleStatus
Id: sisrme-fontanelle-status
Title: "SIS-RME Anterior Fontanelle Status"
Description: "Anterior fontanelle examination finding in a newborn (MISAU.D, Postnatal Consultation)."
* ^experimental = true
* ^caseSensitive = true
* #domed "Domed"
* #tense "Tense"

CodeSystem: SISRMENewbornMedication
Id: sisrme-newborn-medication
Title: "SIS-RME Newborn Medication"
Description: "Medications prescribed to a newborn (MISAU.D, Postnatal Consultation, Newborn Prescription)."
* ^experimental = true
* ^caseSensitive = true
* #benzathine-penicillin "Benzathine Penicillin"
* #crystalline-penicillin "Crystalline Penicillin"
* #azt "Zidovudine / AZT"
* #nvp "Nevirapine / NVP"
* #inh "Isoniazid / INH"

CodeSystem: SISRMEPediatricDangerSign
Id: sisrme-pediatric-danger-sign
Title: "SIS-RME Paediatric General Danger Sign"
Description: "IMCI (Integrated Management of Childhood Illness) general danger signs (MISAU.D, General Examination)."
* ^experimental = true
* ^caseSensitive = true
* #unable-to-drink-or-breastfeed "Unable to drink or breastfeed"
* #vomits-everything "Vomits everything eaten"
* #seizures "Seizures (currently or history)"
* #lethargic "Lethargic"
* #unconscious "Unconscious"

CodeSystem: SISRMEGCSEyeOpening
Id: sisrme-gcs-eye-opening
Title: "SIS-RME GCS Eye Opening Response"
Description: "Glasgow Coma Scale eye-opening response categories (MISAU.D, General Examination)."
* ^experimental = true
* ^caseSensitive = true
* #"4" "Spontaneous eye opening"
* #"3" "Eye opening to sound / voice"
* #"2" "Eye opening to pressure / pain"
* #"1" "No eye opening"

CodeSystem: SISRMEGCSVerbal
Id: sisrme-gcs-verbal
Title: "SIS-RME GCS Verbal Response"
Description: "Glasgow Coma Scale verbal-response categories (MISAU.D, General Examination)."
* ^experimental = true
* ^caseSensitive = true
* #"5" "Oriented"
* #"4" "Confused"
* #"3" "Verbalises isolated words"
* #"2" "Verbalises sounds only"
* #"1" "No verbal response"

CodeSystem: SISRMEGCSMotor
Id: sisrme-gcs-motor
Title: "SIS-RME GCS Motor Response"
Description: "Glasgow Coma Scale motor-response categories (MISAU.D, General Examination)."
* ^experimental = true
* ^caseSensitive = true
* #"6" "Obeys commands"
* #"5" "Localises stimulus"
* #"4" "Normal flexion"
* #"3" "Abnormal flexion"
* #"2" "Abnormal extension"
* #"1" "No motor response"

CodeSystem: SISRMEGeneralStateDegree
Id: sisrme-general-state-degree
Title: "SIS-RME General State"
Description: "Overall clinical general-state assessment (MISAU.D, General Examination)."
* ^experimental = true
* ^caseSensitive = true
* #good "Good"
* #satisfactory "Satisfactory"
* #poor "Poor"
* #serious "Serious / Grave"

CodeSystem: SISRMEBiotype
Id: sisrme-biotype
Title: "SIS-RME Biotype (Somatotype)"
Description: "Constitutional body type classification (MISAU.D, General Examination), per the well-known Sheldon somatotype categories."
* ^experimental = true
* ^caseSensitive = true
* #ectomorph "Ectomorph (lean, linear build)"
* #mesomorph "Mesomorph (muscular, athletic build)"
* #endomorph "Endomorph (rounded, higher adiposity)"

CodeSystem: SISRMEPulseSite
Id: sisrme-pulse-site
Title: "SIS-RME Pulse Assessment Site"
Description: "Anatomical site of a pulse assessment (MISAU.D, General Examination, Pulse Assessment)."
* ^experimental = true
* ^caseSensitive = true
* #radial "Radial"
* #brachial "Brachial"
* #carotid "Carotid"
* #popliteal "Popliteal"
* #femoral "Femoral"
* #pedal "Pedal (Dorsalis Pedis)"

CodeSystem: SISRMEPulseRhythm
Id: sisrme-pulse-rhythm
Title: "SIS-RME Pulse Rhythm"
Description: "Pulse rhythm assessment (MISAU.D, General Examination, Pulse Assessment)."
* ^experimental = true
* ^caseSensitive = true
* #regular "Regular"
* #irregular "Irregular"
