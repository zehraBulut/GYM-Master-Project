public class GuidGeneratorInvocable {

    public class request {  //INNER CLASS  //parameter kulanıcaksak Inner class olmalı!!!
        
    //bu class variables lar FLOW-Action da output olrk doldurulmalı
       @invocableVariable(Label='Has Number?')
        public Boolean hasNumbers;
        @invocableVariable(Label='Has Lower Chars?')
        public Boolean hasLower;
        @invocableVariable(Label='Has Upper Chars?')
        public Boolean hasUpper;
    }

    @invocableMethod(Label='Generate Key')
    public static List<String> generateKey(List<request>params){     //normalde string derız ama list yazılmak zorunda flowda kulanıcaksak
        
       string activationKey = GuidUtility.GenerateKey(params[0].hasNumbers,params[0].hasLower,params[0].hasUpper);
        return  new List<String> {activationKey};      //return yaparkende new list olustrarak yazmalsın
    }   
}