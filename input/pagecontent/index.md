# SIS-RME Implementation Guide

## What this is

SIS-RME (*Sistema de Informação de Saúde – Registo Médico Eletrónico*) is Mozambique's Ministry of Health (MISAU) standard for electronic medical records. It defines, in detail, what information should be captured at every step of a patient's care — from registering at a health facility, through outpatient visits, HIV and TB care, maternal and child health services, pharmacy dispensing, to discharge.

This Implementation Guide (IG) translates that standard into **FHIR** (Fast Healthcare Interoperability Resources), the internationally recognized format for exchanging health data electronically. In practical terms, it is a technical blueprint that lets different health information systems — an electronic medical record at a clinic, a national reporting dashboard, a laboratory system, a pharmacy stock system — exchange patient data about the same person, the same visit, and the same diagnosis, without misunderstanding one another.

## Why it matters

Today, health facilities in Mozambique may use different software systems that were not designed to talk to one another. A patient's HIV treatment history recorded in one system may be invisible to the pharmacy dispensing their medication, or to the maternal health program tracking their pregnancy. This IG exists so that, over time, systems built to it can share a patient's information safely and consistently — reducing duplicate data entry, improving continuity of care, and giving MISAU more reliable national data for planning and reporting.

## What it covers

This first version of the IG covers seven areas of the SIS-RME data dictionary:

- **Registration** — enrolling a patient and capturing their demographic, identification, and socioeconomic information.
- **Outpatient/Program Enrollment** — tracking a patient's enrollment in a specific service (ART, PrEP, maternal/child health sub-services, TB treatment).
- **HIV care** — testing, ART initiation and monitoring, adherence counseling, and psychosocial support.
- **TB care** — screening, diagnosis, treatment and contact tracing.
- **Pharmacy** — prescriptions, dispensing, and pharmacy resupply requests.
- **Maternal and Child Health (MCH)** — prenatal, postnatal (including newborn) and paediatric consultations.
- **General consultation** — the generic scheduling, examination, diagnosis, discharge and transfer workflow shared across services.

See [Modules Overview](modules-overview.html) for a plain-language description of each area, and [Design Notes](design-notes.html) for the technical modeling approach, standards reused, and known limitations of this first version.

## Who this is for

- **Software developers and system integrators** implementing or connecting a system to SIS-RME: use the [Artifacts](artifacts.html) page to browse the FHIR profiles, extensions, value sets and examples defined here.
- **MISAU program managers and policy stakeholders**: the [Modules Overview](modules-overview.html) page describes what each module captures without requiring any technical FHIR background.

## Status

This IG is at an early, pre-publication stage (see [Design Notes](design-notes.html) for details): it has not yet been reviewed or approved by MISAU, and its canonical URL and publisher contact details are placeholders pending confirmation by the implementing organization. It should be treated as a working draft for review and testing, not as an officially endorsed national standard.
