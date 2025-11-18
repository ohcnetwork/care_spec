# Implementation Notes

This page provides implementation guidance for using the Care FHIR Implementation Guide.

## Profile Usage

All Care resources should include the appropriate profile in the `meta.profile` element:

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": [
      "https://fhir.ohc.network/StructureDefinition/care-patient-profile"
    ]
  }
}
```

## Extension Usage

### Required Extensions

Some extensions are marked as `mustSupport` in profiles, indicating they should be populated when the data is available:

- Patient phone numbers (`care-phone-extension`)
- Patient current address (`care-current-address-extension`)
- Patient permanent address (`care-permanent-address-extension`)

### Optional Extensions

Other extensions are optional and should be used when the corresponding data is available:

- Organization hierarchy (`care-organization-hierarchy-extension`)
- Facility scoping (`care-facility-scope-extension`)
- Tags and metadata (`care-tags-extension`)

## Resource References

When referencing other Care resources, use the appropriate profile:

```json
{
  "subject": {
    "reference": "Patient/care-patient-example",
    "type": "Patient"
  }
}
```

## Value Set Bindings

All value set bindings in Care profiles should be respected. Use the specified code systems and codes when populating coded elements.

## Validation

Resources should be validated against:
1. The base FHIR R5 specification
2. The Care profile constraints
3. Value set bindings
4. Extension definitions

## Versioning

The Care Implementation Guide follows semantic versioning. When updating resources, ensure compatibility with the IG version being used.

## Best Practices

1. **Always include profiles**: Set `meta.profile` for all resources
2. **Use extensions appropriately**: Only use Care extensions when the data is available
3. **Maintain references**: Ensure all resource references are valid
4. **Respect constraints**: Follow all mustSupport and cardinality constraints
5. **Use standard terminologies**: Prefer standard code systems (LOINC, SNOMED CT) over custom codes

## Migration from Django Models

When migrating data from Care Django models to FHIR:

1. Map model fields to FHIR elements according to the mapping guide
2. Convert Django relationships to FHIR references
3. Apply appropriate extensions for Care-specific data
4. Validate against profiles before storing or transmitting

## API Considerations

When implementing FHIR APIs for Care:

- Support all Care profiles
- Validate incoming resources against profiles
- Return appropriate error messages for validation failures
- Support search parameters for common queries
- Implement proper security and access control

