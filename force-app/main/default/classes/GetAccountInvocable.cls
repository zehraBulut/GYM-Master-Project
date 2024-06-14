public class GetAccountInvocable {
    
//NOTE:(GM||43)FLOWda calısmasnı ıstyrsan--> @invocablemethod kullanmalyz .methodun adını gorucez 

   @invocablemethod(Description= 'Create Accounts from PTS')
    public static void CreateAccounts(){
        
        GM39GetAccountsFromPTS.GetAccounts();//API Call
        
    }
}