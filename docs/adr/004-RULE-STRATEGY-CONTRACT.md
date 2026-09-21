# ADR-004: Separate business rules from share mechanics

- **Status:** Accepted
- **Date:** 2026-09-21

## Context

A framework cannot infer why one application wants to grant access. Embedding a full formula language in the first version would mix rule evaluation with sharing mechanics.

## Decision

Application code implements `ApexGrantRule` and returns normalized `ApexGrantDecision` values. ApexGrant validates decisions and owns querying, comparison, DML and results.

## Consequences

- Business rules remain strongly typed and testable.
- ApexGrant stays small and reusable.
- Custom Metadata can register rule classes without becoming an expression engine.
- A future declarative evaluator can implement the same contract.
