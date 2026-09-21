public class ApexGrantDecision {
    public Id recordId { get; private set; }
    public Id userOrGroupId { get; private set; }
    public ApexGrantAccessLevel accessLevel { get; private set; }
    public String rowCause { get; private set; }

    public ApexGrantDecision(
        Id recordId,
        Id userOrGroupId,
        ApexGrantAccessLevel accessLevel,
        String rowCause
    ) {
        if (recordId == null) {
            throw new ApexGrantException('Record Id is required.');
        }
        if (userOrGroupId == null) {
            throw new ApexGrantException('User or Group Id is required.');
        }
        if (accessLevel == null) {
            throw new ApexGrantException('Access level is required.');
        }
        if (String.isBlank(rowCause)) {
            throw new ApexGrantException('RowCause is required.');
        }

        this.recordId = recordId;
        this.userOrGroupId = userOrGroupId;
        this.accessLevel = accessLevel;
        this.rowCause = rowCause;
    }

    public String logicalKey() {
        return String.join(
            new List<String>{
                String.valueOf(recordId),
                String.valueOf(userOrGroupId),
                String.valueOf(accessLevel),
                rowCause
            },
            '|'
        );
    }
}
