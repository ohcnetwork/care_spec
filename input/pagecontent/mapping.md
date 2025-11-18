# Django Model to FHIR Mapping

This page provides a mapping guide from Care Django models to FHIR resources.

## Core Models

### Patient Model → Patient Resource
- `name` → `Patient.name`
- `gender` → `Patient.gender`
- `phone_number` → Extension `care-phone-extension.primaryPhone`
- `emergency_phone_number` → Extension `care-phone-extension.emergencyPhone`
- `address` → Extension `care-current-address-extension`
- `permanent_address` → Extension `care-permanent-address-extension`
- `pincode` → `Patient.address.postalCode`
- `date_of_birth` → `Patient.birthDate`
- `deceased_datetime` → `Patient.deceasedDateTime`
- `marital_status` → `Patient.maritalStatus`
- `blood_group` → Extension (custom)
- `geo_organization` → Reference to Organization

### Encounter Model → Encounter Resource
- `status` → `Encounter.status`
- `encounter_class` → `Encounter.class`
- `patient` → `Encounter.subject` (Reference to Patient)
- `period` → `Encounter.period`
- `facility` → `Encounter.serviceProvider` (Reference to Organization)
- `current_location` → `Encounter.location[].location` (Reference to Location)
- `priority` → `Encounter.priority`
- `hospitalization` → `Encounter.hospitalization`
- `discharge_summary_advice` → Extension or note

### Organization Model → Organization Resource
- `name` → `Organization.name`
- `org_type` → `Organization.type`
- `description` → `Organization.description`
- `parent` → `Organization.partOf`
- `parent_cache` → Extension `care-organization-hierarchy-extension.parentCache`
- `level_cache` → Extension `care-organization-hierarchy-extension.levelCache`
- `active` → `Organization.active`

### Location Model → Location Resource
- `name` → `Location.name`
- `status` → `Location.status`
- `operational_status` → `Location.operationalStatus`
- `description` → `Location.description`
- `mode` → `Location.mode`
- `location_type` → `Location.type`
- `form` → `Location.form`
- `parent` → `Location.partOf`
- `facility` → `Location.managingOrganization`

## Clinical Models

### Observation Model → Observation Resource
- `status` → `Observation.status`
- `category` → `Observation.category`
- `main_code` → `Observation.code`
- `patient` → `Observation.subject`
- `encounter` → `Observation.encounter`
- `effective_datetime` → `Observation.effectiveDateTime`
- `value_type` and `value` → `Observation.value[x]`
- `note` → `Observation.note`
- `body_site` → `Observation.bodySite`
- `method` → `Observation.method`
- `component` → `Observation.component`

### Condition Model → Condition Resource
- `clinical_status` → `Condition.clinicalStatus`
- `verification_status` → `Condition.verificationStatus`
- `category` → `Condition.category`
- `severity` → `Condition.severity`
- `code` → `Condition.code`
- `body_site` → `Condition.bodySite`
- `patient` → `Condition.subject`
- `encounter` → `Condition.encounter`
- `onset` → `Condition.onset[x]`
- `abatement` → `Condition.abatement[x]`
- `recorded_date` → `Condition.recordedDate`
- `note` → `Condition.note`

## Medication Models

### MedicationRequest Model → MedicationRequest Resource
- `status` → `MedicationRequest.status`
- `intent` → `MedicationRequest.intent`
- `category` → `MedicationRequest.category`
- `priority` → `MedicationRequest.priority`
- `do_not_perform` → `MedicationRequest.doNotPerform`
- `medication` → `MedicationRequest.medication[x]`
- `patient` → `MedicationRequest.subject`
- `encounter` → `MedicationRequest.encounter`
- `dosage_instruction` → `MedicationRequest.dosageInstruction`
- `authored_on` → `MedicationRequest.authoredOn`
- `requester` → `MedicationRequest.requester`
- `note` → `MedicationRequest.note`

## Common Patterns

### EMRBaseModel Fields
- `history` → Stored in `Resource.meta` or custom extension
- `meta` → `Resource.meta`
- `created_by` → `Resource.meta.source` or custom extension
- `updated_by` → Custom extension
- `external_id` → `Resource.id`
- `tags` → Extension `care-tags-extension`

### Facility Scoping
Resources scoped to a facility use the `care-facility-scope-extension` extension.

### Organization Caching
Organization hierarchy caching fields are mapped to the `care-organization-hierarchy-extension` extension.

