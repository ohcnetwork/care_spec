# Care Extensions

This page documents all Care-specific extensions defined in this Implementation Guide.

## Phone Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-phone-extension`

**Context**: Patient

**Description**: Extension to hold patient's phone numbers, including primary and emergency, as plain strings.

**Structure**:
- `primaryPhone` (0..1): Patient's primary phone number
- `emergencyPhone` (0..1): Patient's emergency contact phone number

**Example**:
```json
{
  "url": "https://fhir.ohc.network/StructureDefinition/care-phone-extension",
  "extension": [
    {
      "url": "primaryPhone",
      "valueString": "+1234567890"
    },
    {
      "url": "emergencyPhone",
      "valueString": "+0987654321"
    }
  ]
}
```

## Current Address Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-current-address-extension`

**Context**: Patient

**Description**: Patient's current home address as plain text.

**Structure**:
- `valueString` (1..1): Current address as string

**Example**:
```json
{
  "url": "https://fhir.ohc.network/StructureDefinition/care-current-address-extension",
  "valueString": "123 Main Street, City, State"
}
```

## Permanent Address Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-permanent-address-extension`

**Context**: Patient

**Description**: Patient's permanent billing address as plain text.

**Structure**:
- `valueString` (1..1): Permanent address as string

**Example**:
```json
{
  "url": "https://fhir.ohc.network/StructureDefinition/care-permanent-address-extension",
  "valueString": "456 Permanent Ave, City, State"
}
```

## Organization Hierarchy Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-organization-hierarchy-extension`

**Context**: Organization

**Description**: Extension to capture organization hierarchy relationships including parent cache and level cache for efficient querying.

**Structure**:
- `parentCache` (0..1): Array of parent organization IDs
- `levelCache` (0..1): Depth level in the organization hierarchy

## Facility Scope Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-facility-scope-extension`

**Context**: Resource

**Description**: Extension to indicate facility scoping for resources that can be scoped to a specific facility.

**Structure**:
- `valueReference` (0..1): Reference to the Facility resource

## Tags Extension

**URL**: `https://fhir.ohc.network/StructureDefinition/care-tags-extension`

**Context**: Resource

**Description**: Extension to capture tags and metadata for resources. Tags are used for categorization and filtering.

**Structure**:
- `tags` (0..1): Array of tag IDs
- `metadata` (0..1): Additional metadata as JSON object

