# Contributing

## Engineering principles

Changes must preserve ownership safety, bulk behaviour, idempotency, explainability and Salesforce security boundaries.

## Workflow

1. Open or select an issue.
2. Identify the access mechanism and ownership boundary.
3. Add positive, negative, bulk and idempotency tests.
4. Validate in a scratch org with restrictive sharing defaults.
5. Open a focused pull request.

## Definition of done

- The implementation cannot delete shares it does not own.
- A second identical reconciliation is a no-op.
- Partial DML failures are represented honestly.
- Dry-run and execute produce equivalent plans.
- Apex compiles at the declared API version.
- Public behaviour and architectural decisions are documented.
- No proprietary source, metadata or customer data is included.
