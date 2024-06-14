public class OpportunityUtility {

@InvocableMethod(description='Generate StageName')
 public static List<String> generateStageName(){
     
    
 List<String> sNList = new List<String>{'Prospecting','Qualification','Needs Analysis','Value Proposition','Id. Decision Makers','Perception Analysis','Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost'};
            
   Integer index = Math.mod(Math.round(Math.random() * 100), sNList.size());
        
    string sName = sNList.get(index);
     
     List<String> result = new List<String>();
        result.add(sName);
      // system.debug(result);
          return result;
       
  }
}