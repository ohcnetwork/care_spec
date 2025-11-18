# Care FHIR Implementation Guide

## Introduction

Welcome to the Care FHIR Implementation Guide. This guide provides comprehensive FHIR R5 specifications for the Care platform - a Digital Public Good enabling Decentralized Administration of Healthcare.

## About Care

Care is an open-source healthcare management platform designed for managing patients, health workers, and hospitals. This Implementation Guide documents all Care EMR models as FHIR resources, profiles, and extensions, enabling standards-based interoperability and data exchange.

### Key Capabilities

- **Real-time Analytics**: Beds, ICUs, Ventilators, Oxygen and other resources in hospitals
- **Facility Management**: Inventory monitoring and resource tracking
- **Integrated Tele-medicine & Triage**: Remote care capabilities
- **Patient Management**: Comprehensive patient records and consultation history
- **Real-time Monitoring**: Video feeds and vitals monitoring
- **Clinical Data Visualizations**: Advanced analytics and reporting

## Implementation Guide Scope

This Implementation Guide provides:

- **30+ FHIR Profiles**: Comprehensive profiles for all Care EMR models
- **6+ Extensions**: Care-specific extensions for phone numbers, addresses, organization hierarchy, facility scoping, and metadata
- **Value Sets**: Standardized terminologies for Care-specific coded values
- **Examples**: Complete example resources demonstrating proper usage
- **API Capabilities**: CapabilityStatement describing the Care FHIR server
- **Mapping Guide**: Complete mapping from Django models to FHIR resources

## Getting Started

### For Implementers

1. **Review Profiles**: Start with [Profiles](profiles.html) to understand the resource structures
2. **Study Extensions**: See [Extensions](extensions.html) for Care-specific data elements
3. **Check Examples**: Review [Examples](examples.html) for implementation patterns
4. **Read Mapping Guide**: Understand [Django Model Mapping](mapping.html) for data transformation

### For Developers

- **API Documentation**: See [CapabilityStatement](CapabilityStatement-care-server.html) for supported operations
- **Implementation Notes**: Review [Implementation Notes](implementation.html) for best practices
- **Terminology**: Check [Terminology](terminology.html) for value sets and code systems

## Resource Organization

Resources are organized into seven main domains matching the Care system architecture:

### 1. Administration

Foundational administrative resources:

**Profiles:**
- [Care Patient Profile](StructureDefinition-care-patient-profile.html) - Patient with Care-specific extensions
- [Care Organization Profile](StructureDefinition-care-organization-profile.html) - Organizational structures
- [Care Facility Organization Profile](StructureDefinition-care-facility-organization-profile.html) - Facility-scoped organizations
- [Care Location Profile](StructureDefinition-care-location-profile.html) - Facility locations, beds, rooms
- [Care Device Profile](StructureDefinition-care-device-profile.html) - Medical devices and equipment
- [Care Consent Profile](StructureDefinition-care-consent-profile.html) - Patient consents

**Status**: 6 profiles defined. Additional resources (RelatedPerson, Practitioner, CareTeam) may use standard FHIR resources.

### 2. Definitions

Definitional resources for reusable structures:

**Profiles:**
- [Care Questionnaire Profile](StructureDefinition-care-questionnaire-profile.html) - Forms and questionnaires

**Status**: 1 profile defined. Additional definition resources (ObservationDefinition, SpecimenDefinition, ActivityDefinition) are planned.

### 3. Clinical

Core clinical resources for patient care:

**Profiles:**
- [Care Encounter Profile](StructureDefinition-care-encounter-profile.html) - Patient visits and interactions
- [Care Observation Profile](StructureDefinition-care-observation-profile.html) - Clinical observations and measurements
- [Care Condition Profile](StructureDefinition-care-condition-profile.html) - Patient conditions and diagnoses
- [Care Allergy Intolerance Profile](StructureDefinition-care-allergy-intolerance-profile.html) - Patient allergies and intolerances
- [Care Diagnostic Report Profile](StructureDefinition-care-diagnostic-report-profile.html) - Diagnostic test results
- [Care Service Request Profile](StructureDefinition-care-service-request-profile.html) - Service requests and orders
- [Care Specimen Profile](StructureDefinition-care-specimen-profile.html) - Biological specimens
- [Care Medication Request Profile](StructureDefinition-care-medication-request-profile.html) - Medication prescriptions
- [Care Medication Statement Profile](StructureDefinition-care-medication-statement-profile.html) - Medication usage statements
- [Care Medication Administration Profile](StructureDefinition-care-medication-administration-profile.html) - Medication administration events

**Status**: 10 profiles defined. Additional resources (Immunization, Procedure, CarePlan, Goal, Task) may use standard FHIR resources.

### 4. Scheduling

Scheduling and appointment management:

**Profiles:**
- [Care Schedule Profile](StructureDefinition-care-schedule-profile.html) - Appointment schedules
- [Care Healthcare Service Profile](StructureDefinition-care-healthcare-service-profile.html) - Healthcare services

**Status**: 2 profiles defined. Additional scheduling resources (TokenSlot, TokenBooking, Availability) are planned.

### 5. Pharmacy and Inventory

Pharmacy operations and inventory management:

**Profiles:**
- [Care Medication Dispense Profile](StructureDefinition-care-medication-dispense-profile.html) - Medication dispensing events
- [Care Supply Request Profile](StructureDefinition-care-supply-request-profile.html) - Supply requests
- [Care Supply Delivery Profile](StructureDefinition-care-supply-delivery-profile.html) - Supply deliveries

**Status**: 3 profiles defined. Additional resources (InventoryItem, InventoryReport) are planned.

### 6. Labs and Diagnostics

Laboratory and diagnostic services:

**Profiles:**
- [Care Service Request Profile](StructureDefinition-care-service-request-profile.html) - Lab service requests
- [Care Specimen Profile](StructureDefinition-care-specimen-profile.html) - Lab specimens
- [Care Diagnostic Report Profile](StructureDefinition-care-diagnostic-report-profile.html) - Diagnostic reports

**Status**: 3 profiles defined (shared with Clinical domain). Additional resources (Media, ImagingStudy) may use standard FHIR resources.

### 7. Billing and Accounting

Financial and billing resources:

**Profiles:**
- [Care Account Profile](StructureDefinition-care-account-profile.html) - Patient accounts
- [Care Charge Item Profile](StructureDefinition-care-charge-item-profile.html) - Chargeable items
- [Care Invoice Profile](StructureDefinition-care-invoice-profile.html) - Billing invoices
- [Care Payment Reconciliation Profile](StructureDefinition-care-payment-reconciliation-profile.html) - Payment reconciliations

**Status**: 4 profiles defined. Additional resources (ChargeItemDefinition, Claim, ClaimResponse, Coverage) are planned.

## Extensions

Care-specific extensions for additional data elements:

- [Care Phone Extension](StructureDefinition-care-phone-extension.html) - Patient phone numbers (primary and emergency)
- [Care Current Address Extension](StructureDefinition-care-current-address-extension.html) - Current home address
- [Care Permanent Address Extension](StructureDefinition-care-permanent-address-extension.html) - Permanent billing address
- [Care Organization Hierarchy Extension](StructureDefinition-care-organization-hierarchy-extension.html) - Organization hierarchy
- [Care Facility Scope Extension](StructureDefinition-care-facility-scope-extension.html) - Facility-scoped data
- [Care Tags Extension](StructureDefinition-care-tags-extension.html) - Resource tagging

## Value Sets

Standardized terminologies for Care-specific coded values:

- [Care Encounter Status](ValueSet-care-encounter-status.html) - Encounter status values
- [Care Location Status](ValueSet-care-location-status.html) - Location status values
- [Care Observation Status](ValueSet-care-observation-status.html) - Observation status values
- [Care Medication Status](ValueSet-care-medication-status.html) - Medication status values
- [Care Condition Status](ValueSet-care-condition-status.html) - Condition status values
- [Care Organization Types](ValueSet-care-organization-types.html) - Organization type values

## Examples

Example resource instances demonstrating proper usage:

- [Patient Example](Patient-care-patient-example.html)
- [Encounter Example](Encounter-care-encounter-example.html)
- [Observation Example](Observation-care-observation-example.html)
- [MedicationRequest Example](MedicationRequest-care-medication-request-example.html)
- [Condition Example](Condition-care-condition-example.html)
- [Organization Example](Organization-care-organization-example.html)

See [Examples](examples.html) for more examples and [Resource Organization](RESOURCE_ORGANIZATION.md) for detailed mapping.

## Standards Compliance

- **FHIR Version**: R5 (5.0.0)
- **Canonical URL**: `https://fhir.ohc.network`
- **License**: MIT
- **Publisher**: Open Healthcare Network

## Support and Contribution

- **GitHub Repository**: [https://github.com/ohcnetwork/care](https://github.com/ohcnetwork/care)
- **API Documentation**: [https://careapi.ohc.network/swagger](https://careapi.ohc.network/swagger)
- **Website**: [https://ohc.network](https://ohc.network)

## Version Information

- **IG Version**: 0.1.0
- **Status**: Draft
- **Last Updated**: 2025-01-27
