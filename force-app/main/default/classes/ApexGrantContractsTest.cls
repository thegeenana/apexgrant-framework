@IsTest
private class ApexGrantContractsTest {
    @IsTest
    static void decisionHasStableLogicalKey() {
        Account account = new Account(Name = 'ApexGrant Test');
        insert account;

        ApexGrantDecision first = new ApexGrantDecision(
            account.Id,
            UserInfo.getUserId(),
            ApexGrantAccessLevel.READ,
            'Application_Access__c'
        );
        ApexGrantDecision second = new ApexGrantDecision(
            account.Id,
            UserInfo.getUserId(),
            ApexGrantAccessLevel.READ,
            'Application_Access__c'
        );

        System.assertEquals(first.logicalKey(), second.logicalKey());
    }

    @IsTest
    static void decisionRejectsMissingOwnershipReason() {
        Account account = new Account(Name = 'ApexGrant Test');
        insert account;

        try {
            new ApexGrantDecision(
                account.Id,
                UserInfo.getUserId(),
                ApexGrantAccessLevel.READ,
                null
            );
            System.assert(false, 'Expected ApexGrantException');
        } catch (ApexGrantException expected) {
            System.assert(expected.getMessage().contains('RowCause'));
        }
    }

    @IsTest
    static void planReportsWhetherChangesExist() {
        ApexGrantPlan plan = new ApexGrantPlan();
        System.assertEquals(false, plan.hasChanges());

        plan.addInsert(new AccountShare());
        System.assertEquals(true, plan.hasChanges());
    }

    @IsTest
    static void resultRejectsInconsistentCounts() {
        try {
            new ApexGrantResult(10, 8, 1);
            System.assert(false, 'Expected ApexGrantException');
        } catch (ApexGrantException expected) {
            System.assert(expected.getMessage().contains('attempted'));
        }
    }
}
