public class GenerateStageName {

 public static string newStageName(){
        
   List<string> stageNameList = new List<string>{'Prospecting','Qualification','Needs Analysis','Value Proposition','Id. Decision Makers','Perception Analysis','Proposal/Price Quote','	Negotiation/Review','Closed Won','Closed Lost'};
    
   Integer index = math.mod(math.round(math.random()* 100),stageNameList.size());
     
     system.debug(stageNameList.get(index));
     
     return stageNameList.get(index);
        
        
    }
}