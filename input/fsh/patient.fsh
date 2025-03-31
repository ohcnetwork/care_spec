// Define Extensions Separately

Extension: PhoneExtension
Id: phone-extension
Title: "Phone Extension"
Description: "A simple extension to hold patient's phone numbers, including primary and emergency, as plain strings."
* extension contains
    primaryPhone 0..1 MS and
    emergencyPhone 0..1 MS
* extension[primaryPhone].valueString 1..1 MS
* extension[emergencyPhone].valueString 1..1 MS

Extension: CurrentAddressExtension
Id: current-address-extension
Title: "Current Address Extension"
Description: "Patient's current home address as plain text."
* value[x] only string

Extension: PermanentAddressExtension
Id: permanent-address-extension
Title: "Permanent Address Extension"
Description: "Patient's permanent billing address as plain text."
* value[x] only string

// Patient Profile Definition

Profile: PatientProfile
Parent: Patient
Id: patient-profile
Title: "Custom Patient Profile"
Description: "A profile that accurately represents patient demographic and contact details as specified."

* name 1..* MS

// Phone number extension
* extension contains PhoneExtension named phoneNumbers 0..1 MS

// Address extensions
* extension contains 
    CurrentAddressExtension named currentAddress 0..1 MS and
    PermanentAddressExtension named permanentAddress 0..1 MS

* extension[currentAddress].valueString 1..1 MS
* extension[permanentAddress].valueString 1..1 MS

// Postal Code - retained within FHIR standard address structure
* address.postalCode 0..1 MS

// Gender
* gender 1..1 MS

// Date of birth and Year of birth
* birthDate 0..1 MS

// Deceased datetime
* deceasedDateTime 0..1 MS

// Marital Status
* maritalStatus 0..1 MS
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// Nationality
* extension contains http://hl7.org/fhir/StructureDefinition/patient-nationality named nationality 0..1 MS
* extension[nationality].extension[code] 1..1 MS
* extension[nationality].extension[code].valueCodeableConcept 1..1 MS

