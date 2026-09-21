# ADR-003: Support custom objects first

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

Share-object fields, supported access levels and RowCause behaviour differ across standard and custom objects.

## Decision

The initial release supports custom objects with a custom Apex Sharing Reason, users or public groups as recipients, and Read or Edit access.

## Consequences

- The first implementation can enforce a strong ownership boundary.
- Standard objects are not assumed to behave identically.
- Each future standard-object adapter needs capability tests and a dedicated decision record.
- The learning scope remains achievable without hiding platform differences.
