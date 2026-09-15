# Technical Design Notes

This page documents the modeling conventions used across this IG, so that implementers extending it in future can stay consistent, and so that reviewers can understand the judgment calls that were made.

## Source material

Every profile, extension and value set in this IG traces back to a specific module and data element ID in the *SIS-RME Data Dictionary (June 2026)*, MISAU's own specification of what SIS-RME systems should capture. Data element references (e.g. `MISAU.C.DE57`) appear in FSH `^short` annotations and descriptions throughout, so the mapping from FHIR back to the source dictionary is traceable.

## Terminology strategy

Where a SIS-RME data element's answer options map cleanly onto an existing, internationally recognized code system, this IG reuses that code system directly rather than inventing local codes:

- **SNOMED CT** — blood group and Rh factor, index-contact HIV status categories, diagnosis staging codes taken directly from the source dictionary.
- **LOINC** — vital signs and anthropometrics (weight, height, BMI, temperature, heart rate, respiratory rate, oxygen saturation), CD4 count, HIV viral load, fundal height, fetal heart rate, and Glasgow Coma Scale components (total, eye, verbal, motor).
- **ICD-10** — condition codes for tuberculosis, malaria and syphilis, via `is-a` value set filters over the relevant ICD-10 chapters.
- **HL7 v2/v3 terminologies** — identifier types (v2-0203), Yes/No indicators (v2-0136), marital status (v3-MaritalStatus), and family/contact relationship types (v3-RoleCode).
- **UCUM** — all units of measure, and the standard `age-units` value set for estimated age.
- **ISO 3166** — country codes, via the standard `patient-nationality` extension.

Where no suitable standard exists — most Mozambique- or MISAU-specific categorizations (provinces, document types like DIRE, socioeconomic exemption categories, service enrollment states) — a local `CodeSystem` was defined instead, each documented with a rationale in its `Description`.

Two value sets (`SISRMEProvinceVS`, `SISRMEDistrictVS`) are placeholders: Mozambique's 11 provinces are enumerated in full, but the ~154-district list is only illustrated with a handful of example codes (bound with `example` strength). A real deployment should bind these to an authoritative administrative-boundaries source rather than maintain the list by hand in FHIR.

## Resource modeling conventions

- **A consultation/visit is an `Encounter`.** Content specific to one visit (history, examination findings, screening results, counseling) is captured as extensions on that `Encounter`, grouped to mirror the source dictionary's own section structure, rather than as free-standing `Observation`/`Condition` resources for every field. This keeps the model close to the source system's own flat, form-based structure, at the cost of being less granular than a fully decomposed FHIR model (e.g. individual `Observation` resources for every checklist item) would be.
- **Numeric, LOINC-codeable measurements are `Observation` resources**, not extensions — vital signs, anthropometrics, CD4/viral load, and Glasgow Coma Scale scores. A generic vital-sign profile exists per clinical module (`SISRMEHIVVitalSign`, `SISRMEMCHVitalSign`) with an open code binding, rather than a fixed-code `Observation` profile per measurement type.
- **A "select all that apply" checklist is one repeating coded extension**, not one boolean extension per option (e.g. TB risk factors, adherence risk factors, danger signs). This scales far better than a per-flag boolean as the source dictionary's checklists grow into the dozens of options.
- **A program/service enrollment with its own lifecycle (active, transferred, cured, discharged) is an `EpisodeOfCare`**, distinct from the `Encounter` for any single visit within it.
- **A patient's ongoing diagnosis is a `Condition`**; a prescription is a `MedicationRequest`; scheduling/triage is an `Appointment`.
- **Extensions and value sets are reused across modules** wherever the same real-world concept recurs (e.g. kinship/relationship types, screening results, family planning methods, TB symptoms) instead of being redefined per module.

## Known simplifications

- Newborn assessment data (MCH postnatal module) is captured on the mother's `Encounter` via an extension, following the source form's flat single-record capture of both mother and newborn, rather than modeling the newborn as their own `Patient`/`Encounter` as a fully rigorous implementation would.
- Several free-text fields (e.g. "Diagnoses Obtained", "Treatments Performed", regional physical examination findings) are captured as plain strings rather than structured `Condition`/`Procedure` references, matching the source dictionary's own free-text data type for those fields.
- Dispensed-quantity tracking is captured as an extension on `MedicationRequest` rather than a separate `MedicationDispense` resource.
- The pharmacy warehouse stock ledger (see [Modules Overview](modules-overview.html)) is out of scope for this version.

## Verified vs. source-supplied codes

Where this IG's authors independently selected a standard code (e.g. LOINC/SNOMED codes for vital signs and lab measurements chosen because none were supplied by the source dictionary), those codes were checked against an authoritative terminology source before being used. Where the source data dictionary itself supplied a specific code inline (e.g. the SNOMED CT staging codes in the General module's "Stadium" field), that code is reused as given and is noted as not independently re-verified by this IG.

## Before this IG is used in production

- Replace the placeholder canonical URL and publisher contact details (see `sushi-config.yaml`) with values the implementing organization actually controls.
- Have MISAU clinical and health-informatics staff review the section-by-section mappings against current SIS-RME practice, since the source data dictionary itself contains some inconsistencies (duplicated data element IDs, mislabeled data types, near-duplicate option lists) that were resolved using the modeling team's best clinical judgment and are called out inline where significant.
- Replace the example administrative-boundaries value sets (district list) with a complete, authoritative source.
- Run this IG's examples against a real FHIR validator and terminology server as part of any CI/CD pipeline before relying on it operationally (see the repository's `_build.sh`/`_build.bat` scripts, which run the official HL7 FHIR IG Publisher).
