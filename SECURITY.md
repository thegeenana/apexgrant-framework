# Security policy

ApexGrant changes effective record access and must be treated as security-sensitive infrastructure.

## Report a vulnerability

Do not open a public issue for a vulnerability that could grant unauthorised access or delete legitimate shares. Contact the maintainer privately through the repository owner's published GitHub contact channel.

## Security invariants

- Delete only shares carrying the configured framework-owned RowCause.
- Never treat record ownership, role hierarchy or unrelated share rows as framework state.
- Validate object support, recipient identity, access level and RowCause before DML.
- Use bulk partial DML and retain per-record outcomes.
- Do not log record contents or personal information unnecessarily.
- Make execution context and data-access mode explicit.
- Default to dry-run or fail-closed when configuration is invalid.
