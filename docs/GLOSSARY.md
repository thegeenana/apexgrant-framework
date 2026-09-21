# Glossary

| Term | Meaning in ApexGrant |
|---|---|
| Desired share | Access produced by an active ApexGrant rule |
| Existing owned share | Persisted share whose RowCause is assigned to ApexGrant |
| Foreign share | Access owned by Salesforce or another application |
| Decision | One desired record-recipient-access-RowCause tuple |
| Plan | Creates, removals and unchanged decisions before DML |
| Reconciliation | Comparison of desired and existing owned state |
| Targeted recalculation | Reconcile a known set of parent record IDs |
| Full reconciliation | Re-evaluate every record in a configured rule's domain |
| RowCause | Salesforce reason identifying why a share row exists |
| Dry run | Calculate and report a plan without changing access |
| Effective access | Combined access from every Salesforce sharing mechanism |
