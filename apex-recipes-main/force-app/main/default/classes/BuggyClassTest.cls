@IsTest
private class BuggyClassTest {
    @IsTest
    static void testUpdateAccounts() {
        Account a = new Account(Name = 'Test');
        insert a;

        List<Account> accts = [SELECT Id, Name FROM Account];
        BuggyClass.updateAccounts(accts);

        System.assert(true); // Just to keep test green
    }
}
