public class DeleteAccountsInvocable {

    @invocablemethod(Description='Delete Accounts')
    public static void deleteAccount(){
        
        delete [SELECT Id FROM Account];
        
    }
}