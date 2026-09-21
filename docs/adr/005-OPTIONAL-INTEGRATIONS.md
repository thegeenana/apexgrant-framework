# ADR-005: Keep portfolio integrations optional

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

ApexGrant benefits from trigger orchestration, asynchronous processing and structured logging, but mandatory dependencies would prevent standalone adoption and create release coupling.

## Decision

The core framework has no compile-time dependency on ApexRail, ApexConvoy or ApexSignal. Separate adapters may integrate with their public contracts.

## Consequences

- ApexGrant remains independently deployable.
- Adapters must be isolated from the core package.
- The core exposes lifecycle inputs and structured outputs suitable for adapters.
- Integration examples may require multiple repositories in a demonstration org.
