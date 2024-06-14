public class GM39GetAccountsFromPTS {
    
   //@future(Callout=true)
    Public static void GetAccounts(){
        
        HTTPRequest request = new HTTPRequest();
        request.setEndPoint('https://api.pathtosalesforce.com/accounts.php');
        request.setMethod('GET');
        
        HTTP http = new HTTP();
        HTTPResponse response = http.send(request);       
        //system.debug(response.getBody());//JSON        
        
        //2)DESERİALIZE yap --> classname.methodName gbı dusun
        
        List<GM39GetAccountsFromPTSResponse> result =GM39GetAccountsFromPTSResponse.parse(response.getBody());
        
        List<Account> acList = new List<Account>();
        for(GM39GetAccountsFromPTSResponse acFromPts:result){
            Account ac = new Account();
            ac.Name= acFromPts.Name;
            ac.AccountNumber= acFromPts.AccountNumber;
            
            acList.add(ac);
        }
           insert acList;               
    }    
}