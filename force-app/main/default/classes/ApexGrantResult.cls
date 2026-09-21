public class ApexGrantResult {
    public Integer attempted { get; private set; }
    public Integer succeeded { get; private set; }
    public Integer failed { get; private set; }

    public ApexGrantResult(Integer attempted, Integer succeeded, Integer failed) {
        this.attempted = nonNegative(attempted);
        this.succeeded = nonNegative(succeeded);
        this.failed = nonNegative(failed);

        if (this.succeeded + this.failed != this.attempted) {
            throw new ApexGrantException(
                'Result must satisfy attempted = succeeded + failed.'
            );
        }
    }

    private static Integer nonNegative(Integer value) {
        return value == null || value < 0 ? 0 : value;
    }
}
