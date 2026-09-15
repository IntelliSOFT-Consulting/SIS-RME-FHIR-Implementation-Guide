// Aliases for external code systems and value sets reused throughout the
// SIS-RME (MISAU Registration module) profiles, extensions and value sets.

Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $UCUM = http://unitsofmeasure.org
Alias: $ISO3166 = urn:iso:std:iso:3166

Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
// The "v2-0136" Yes/No ValueSet is a wrapper: its compose draws its actual
// Y/N concepts from CodeSystem v2-0532 ("Yes-NoIndicator"), not from a
// CodeSystem literally called v2-0136 (which has no concept content).
// Use $v2-0532 for fixed-value code assignments and $v2-0136-vs for
// binding (`from ... (required)`) rules.
Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $v2-0136-vs = http://terminology.hl7.org/ValueSet/v2-0136

Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-MaritalStatus-vs = http://terminology.hl7.org/ValueSet/v3-MaritalStatus

Alias: $age-units-vs = http://hl7.org/fhir/ValueSet/age-units

Alias: $patient-nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
