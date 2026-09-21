public class ApexGrantPlan {
    public List<SObject> sharesToInsert { get; private set; }
    public List<SObject> sharesToDelete { get; private set; }
    public Integer unchangedCount { get; private set; }

    public ApexGrantPlan() {
        sharesToInsert = new List<SObject>();
        sharesToDelete = new List<SObject>();
        unchangedCount = 0;
    }

    public void addInsert(SObject shareRecord) {
        if (shareRecord != null) {
            sharesToInsert.add(shareRecord);
        }
    }

    public void addDelete(SObject shareRecord) {
        if (shareRecord != null) {
            sharesToDelete.add(shareRecord);
        }
    }

    public void countUnchanged() {
        unchangedCount++;
    }

    public Boolean hasChanges() {
        return !sharesToInsert.isEmpty() || !sharesToDelete.isEmpty();
    }
}
