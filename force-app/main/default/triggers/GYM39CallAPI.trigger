trigger GYM39CallAPI on Test__e (after insert) {
    
   GetAccountsFromPTS.GetAccounts();
}