# ADR-001: Modify only framework-owned shares

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

A record may be shared by ownership, hierarchy, sharing rules, teams, territories, users and multiple applications. Deleting a row merely because it is absent from ApexGrant's desired set could remove legitimate access.

## Decision

ApexGrant may insert and delete only share rows carrying a configured, validated RowCause assigned to the framework or application rule. Repository queries must filter by that ownership boundary.

## Consequences

- Reconciliation cannot remove foreign access.
- Custom Apex Sharing Reasons are required for the first supported slice.
- Misconfigured or unavailable RowCause values fail closed.
- Standard-object support requires separate adapters and ADRs because equivalent ownership semantics differ.
