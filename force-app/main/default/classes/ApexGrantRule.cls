public interface ApexGrantRule {
    List<ApexGrantDecision> evaluate(List<SObject> records);
}
