# ADR-006: Make every mutation derive from a plan

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

Sharing changes are security-sensitive. Administrators and tests need to inspect intended grants and removals before DML.

## Decision

The reconciler always produces an `ApexGrantPlan`. Execution consumes that plan. Dry-run mode returns the same plan without executing it.

## Consequences

- The framework can explain proposed access changes.
- Tests can validate calculation separately from DML.
- Administration UI can preview impact.
- Executors must validate that a stale or tampered plan is not applied blindly.
- Future plans may require fingerprints, expiry or revalidation.
