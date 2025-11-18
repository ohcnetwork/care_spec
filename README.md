# Care FHIR Implementation Guide

FHIR R5 Implementation Guide for the Care platform - a Digital Public Good enabling Decentralized Administration of Healthcare.

## Overview

This Implementation Guide documents all Care EMR models as FHIR R5 resources, profiles, extensions, and value sets. It provides comprehensive specifications for implementing FHIR-based interoperability with the Care system.

## Repository Structure

```
/
├── input/
│   ├── resources/          # All FHIR resources (profiles, extensions, value sets)
│   ├── examples/          # Example resource instances
│   └── pagecontent/       # Documentation pages (Markdown)
├── care-repo/             # Cloned Care repository for reference
├── output/                # Generated IG (after build)
├── ig.ini                 # IG Publisher configuration
├── verify-models-and-json.sh  # Verification script
└── VERIFICATION_TASKS.md  # Comprehensive verification checklist
```

## Quick Start

### Building the IG

```bash
# Update IG Publisher (first time)
./_updatePublisher.sh -y

# Build the IG
./_genonce.sh

# Or build without terminology server (offline)
./_genonce.sh -tx n/a
```

### Viewing the IG

After building, the IG is available in the `output/` directory. You can serve it locally:

```bash
cd output && python3 -m http.server 8000
# Then visit http://localhost:8000
```

### Verification

Run the verification script to validate all resources:

```bash
./verify-models-and-json.sh
```

## Resources

- **40+ JSON Resources**: Profiles, extensions, value sets, and capability statements
- **6+ Examples**: Example resource instances
- **7 Documentation Pages**: Comprehensive guides and references

## Key Features

- ✅ Pure JSON authoring (no FSH)
- ✅ FHIR R5 (5.0.0) compliant
- ✅ Comprehensive model coverage
- ✅ Care-specific extensions
- ✅ Standard terminology integration
- ✅ Complete documentation
- ✅ Verification scripts

## Documentation

- [Home](input/pagecontent/index.md) - Introduction and overview
- [Profiles](input/pagecontent/profiles.md) - All FHIR profiles
- [Extensions](input/pagecontent/extensions.md) - Care-specific extensions
- [Terminology](input/pagecontent/terminology.md) - Value sets and code systems
- [Examples](input/pagecontent/examples.md) - Example resources
- [Mapping Guide](input/pagecontent/mapping.md) - Django to FHIR mapping
- [Implementation Notes](input/pagecontent/implementation.md) - Implementation guidance
- [Quality Assurance](input/pagecontent/quality-assurance.md) - QA processes

## Verification

See [VERIFICATION_TASKS.md](VERIFICATION_TASKS.md) for comprehensive verification checklist.

## Contributing

Contributions are welcome! Please ensure:
1. All JSON resources are valid
2. Profiles follow FHIR R5 standards
3. Documentation is updated
4. Verification script passes

## License

MIT License - see LICENSE file

## Links

- **Care Repository**: https://github.com/ohcnetwork/care
- **Care API**: https://careapi.ohc.network
- **Care Website**: https://ohc.network

