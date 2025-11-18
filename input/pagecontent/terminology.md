# Terminology

This page documents the value sets and code systems used in the Care Implementation Guide.

## Value Sets

### Encounter Status
- **Value Set**: [Care Encounter Status](ValueSet-care-encounter-status.html)
- **Description**: Value set for encounter statuses used in the Care system
- **Based on**: HL7 FHIR Encounter Status code system

### Location Status
- **Value Set**: [Care Location Status](ValueSet-care-location-status.html)
- **Description**: Value set for location statuses used in the Care system
- **Based on**: HL7 FHIR Location Status code system

### Observation Status
- **Value Set**: [Care Observation Status](ValueSet-care-observation-status.html)
- **Description**: Value set for observation statuses used in the Care system
- **Based on**: HL7 FHIR Observation Status code system

## Standard Code Systems

The Care Implementation Guide uses standard HL7 FHIR code systems where applicable:

- **Marital Status**: `http://terminology.hl7.org/CodeSystem/v3-MaritalStatus`
- **Encounter Status**: `http://hl7.org/fhir/encounter-status`
- **Location Status**: `http://hl7.org/fhir/location-status`
- **Observation Status**: `http://hl7.org/fhir/observation-status`
- **Observation Category**: `http://terminology.hl7.org/CodeSystem/observation-category`

## LOINC

For clinical observations and diagnostic codes, Care uses LOINC (Logical Observation Identifiers Names and Codes):
- **LOINC System**: `http://loinc.org`

## SNOMED CT

For clinical terminology, Care may use SNOMED CT where appropriate:
- **SNOMED CT System**: `http://snomed.info/sct`

