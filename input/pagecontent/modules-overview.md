# Modules Overview

This page describes, in plain language and without FHIR jargon, what each part of this Implementation Guide covers and why it was modeled the way it was. For the corresponding technical detail (FHIR profiles, extensions, value sets), see [Artifacts](artifacts.html).

## Registration

Covers what happens when a person first registers at a health facility: their name, date of birth, sex, national identity documents, home address, an emergency contact or companion, whether they are a registered blood donor, their socioeconomic circumstances, and any family relationships recorded at registration (for example, linking a newborn to their mother). It also covers the summary information captured about a single visit — the reason for the visit, what was found, and how the visit ended.

## Outpatient / Program Enrollment

Many services at a Mozambican health facility work like a membership: a patient is *enrolled* in a program (HIV/ART, PrEP, a maternal or child health service, TB treatment) for a period of time, moves through defined stages (active, transferred, treatment suspended, cured, discharged), and is eventually exited from it. This module tracks that enrollment lifecycle, separately from any single clinic visit, along with related information such as contact-tracing for people exposed to a diagnosed patient, and consent for that tracing to happen.

## HIV Care

Covers the clinical content of an HIV/ART consultation: how the diagnosis was confirmed, prior treatment history, starting and monitoring antiretroviral therapy (including CD4 count and viral load results), routine screening (STI, cervical cancer, diabetes, TB, hypertension), side effects, and the substantial psychosocial and adherence-support work that accompanies HIV care — counseling, diagnosis disclosure (especially for children), key-population support, and peer support group participation.

## TB Care

Covers screening a patient for TB symptoms and exposure, confirming and characterizing a TB case (site of disease, drug sensitivity, prior treatment history), contact tracing for the patient's household and close contacts, the treatment regimen and the directly-observed medication schedule, and the counseling and mental-health support that helps patients complete a long TB treatment course.

## Pharmacy

Covers two different things that happen to sit in the same section of the underlying data dictionary. The first, and the main focus of this IG, is what happens when a clinician prescribes something for a patient — a medication, a diet, or another treatment — including the dose, route, frequency, and duration. The second is the pharmacy's own internal stock-keeping (receiving stock, monthly consumption, physical inventory counts). That second part is warehouse/logistics record-keeping rather than patient care, so this IG only lightly touches it (a facility's request to resupply its pharmacy) and does not attempt to fully replace a dedicated stock-management system.

## Maternal and Child Health (MCH)

Covers three connected but distinct visit types: a **prenatal** consultation (registration of the pregnancy, obstetric history, examination findings, laboratory tests, preventive medication, vaccination), a **postnatal** consultation (the mother's recovery and screening, and a full assessment of her newborn baby), and a **paediatric** consultation (history-taking, a full physical examination including the standard Glasgow Coma Scale for level of consciousness, growth measurements, and disease screening) for children more broadly.

## General Consultation

Covers the generic version of a consultation that applies across specialties, when a visit does not fall neatly into one of the specific programs above: scheduling and triage, a full clinical history and examination (including detailed neurological and regional physical examination), pain assessment, a broad disease-screening panel (TB, STI, cervical/breast cancer, diabetes, hypertension, HIV), laboratory and imaging requests, diagnosis, discharge planning, and transferring a patient between wards or facilities.

## What is deliberately not covered yet

Two areas of the underlying data dictionary were intentionally left out of this first version, and are documented as such in the technical source so nobody mistakes the omission for an oversight:

- A set of menu/navigation items in the Registration module that are application functionality (e.g. "Request Laboratory Tests" as a clickable menu button) rather than actual patient data to record.
- The detailed pharmacy warehouse stock ledger (goods received, monthly stock summaries, stock adjustments, physical inventory counts) — genuine facility logistics data with no connection to an individual patient, better served by a dedicated stock/logistics management system than by new patient-centered FHIR resources in this clinical IG.
