# Care FHIR Profiles

This page provides an overview of all FHIR profiles defined in the Care Implementation Guide.

## Core Administrative Profiles

### Patient Profile
- **Profile**: [Care Patient Profile](StructureDefinition-care-patient-profile.html)
- **Base Resource**: Patient
- **Description**: Patient profile with Care-specific extensions for phone numbers, addresses, and demographic information

### Encounter Profile
- **Profile**: [Care Encounter Profile](StructureDefinition-care-encounter-profile.html)
- **Base Resource**: Encounter
- **Description**: Profile for patient visits and interactions

### Organization Profile
- **Profile**: [Care Organization Profile](StructureDefinition-care-organization-profile.html)
- **Base Resource**: Organization
- **Description**: Profile for organizational structures with hierarchy support

### Location Profile
- **Profile**: [Care Location Profile](StructureDefinition-care-location-profile.html)
- **Base Resource**: Location
- **Description**: Profile for facility locations, beds, rooms, and physical spaces

### Account Profile
- **Profile**: [Care Account Profile](StructureDefinition-care-account-profile.html)
- **Base Resource**: Account
- **Description**: Profile for patient accounts and billing information

## Clinical Profiles

### Observation Profile
- **Profile**: [Care Observation Profile](StructureDefinition-care-observation-profile.html)
- **Base Resource**: Observation
- **Description**: Profile for clinical observations, measurements, and assessments

### Condition Profile
- **Profile**: [Care Condition Profile](StructureDefinition-care-condition-profile.html)
- **Base Resource**: Condition
- **Description**: Profile for patient conditions, diagnoses, and health problems

### Allergy Intolerance Profile
- **Profile**: [Care Allergy Intolerance Profile](StructureDefinition-care-allergy-intolerance-profile.html)
- **Base Resource**: AllergyIntolerance
- **Description**: Profile for patient allergies and intolerances

### Diagnostic Report Profile
- **Profile**: [Care Diagnostic Report Profile](StructureDefinition-care-diagnostic-report-profile.html)
- **Base Resource**: DiagnosticReport
- **Description**: Profile for diagnostic test results and reports

### Service Request Profile
- **Profile**: [Care Service Request Profile](StructureDefinition-care-service-request-profile.html)
- **Base Resource**: ServiceRequest
- **Description**: Profile for service requests and orders

### Specimen Profile
- **Profile**: [Care Specimen Profile](StructureDefinition-care-specimen-profile.html)
- **Base Resource**: Specimen
- **Description**: Profile for biological specimens

## Medication Profiles

### Medication Request Profile
- **Profile**: [Care Medication Request Profile](StructureDefinition-care-medication-request-profile.html)
- **Base Resource**: MedicationRequest
- **Description**: Profile for medication prescriptions and requests

### Medication Dispense Profile
- **Profile**: [Care Medication Dispense Profile](StructureDefinition-care-medication-dispense-profile.html)
- **Base Resource**: MedicationDispense
- **Description**: Profile for medication dispensing events

### Medication Administration Profile
- **Profile**: [Care Medication Administration Profile](StructureDefinition-care-medication-administration-profile.html)
- **Base Resource**: MedicationAdministration
- **Description**: Profile for medication administration events

### Medication Statement Profile
- **Profile**: [Care Medication Statement Profile](StructureDefinition-care-medication-statement-profile.html)
- **Base Resource**: MedicationStatement
- **Description**: Profile for patient medication usage statements

## Other Profiles

### Device Profile
- **Profile**: [Care Device Profile](StructureDefinition-care-device-profile.html)
- **Base Resource**: Device
- **Description**: Profile for medical devices and equipment

### Consent Profile
- **Profile**: [Care Consent Profile](StructureDefinition-care-consent-profile.html)
- **Base Resource**: Consent
- **Description**: Profile for patient consents

### Questionnaire Profile
- **Profile**: [Care Questionnaire Profile](StructureDefinition-care-questionnaire-profile.html)
- **Base Resource**: Questionnaire
- **Description**: Profile for forms and questionnaires

## Financial Profiles

### Invoice Profile
- **Profile**: [Care Invoice Profile](StructureDefinition-care-invoice-profile.html)
- **Base Resource**: Invoice
- **Description**: Profile for billing invoices

### Charge Item Profile
- **Profile**: [Care Charge Item Profile](StructureDefinition-care-charge-item-profile.html)
- **Base Resource**: ChargeItem
- **Description**: Profile for chargeable items

### Payment Reconciliation Profile
- **Profile**: [Care Payment Reconciliation Profile](StructureDefinition-care-payment-reconciliation-profile.html)
- **Base Resource**: PaymentReconciliation
- **Description**: Profile for payment reconciliations

## Scheduling Profiles

### Schedule Profile
- **Profile**: [Care Schedule Profile](StructureDefinition-care-schedule-profile.html)
- **Base Resource**: Schedule
- **Description**: Profile for appointment schedules

### Healthcare Service Profile
- **Profile**: [Care Healthcare Service Profile](StructureDefinition-care-healthcare-service-profile.html)
- **Base Resource**: HealthcareService
- **Description**: Profile for healthcare services

## Supply Profiles

### Supply Request Profile
- **Profile**: [Care Supply Request Profile](StructureDefinition-care-supply-request-profile.html)
- **Base Resource**: SupplyRequest
- **Description**: Profile for supply requests

### Supply Delivery Profile
- **Profile**: [Care Supply Delivery Profile](StructureDefinition-care-supply-delivery-profile.html)
- **Base Resource**: SupplyDelivery
- **Description**: Profile for supply deliveries

## Organization Profiles

### Facility Organization Profile
- **Profile**: [Care Facility Organization Profile](StructureDefinition-care-facility-organization-profile.html)
- **Base Resource**: Organization
- **Description**: Profile for facility-scoped organizations

