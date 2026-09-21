# ADR-002: Use desired-versus-existing reconciliation

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

Trigger-only incremental sharing can drift after rule changes, ownership changes, failed transactions or historical data updates.

## Decision

ApexGrant calculates desired framework-owned sharing, loads existing framework-owned sharing and produces a deterministic difference: create, remove or unchanged.

## Consequences

- Full reconciliation can repair drift.
- Targeted and full processing use the same engine.
- Repeated identical execution is a no-op.
- Equality and logical share identity must be defined explicitly.
- Large reconciliations require bulk queries and asynchronous orchestration.
