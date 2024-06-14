public class GuidUtility {
   
    
     public static string NumberChars= '0123456789';
     public static string LowerChars= 'abcdefghijklmnopqrstuvwxyz';
     public static string UpperChars= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    
    public static string CharSet= '';    
    
    public static string GenerateKey( Boolean hasNumberChars,Boolean hasLowerChars, Boolean hasUpperChars ){        
       
        if(hasNumberChars){
            CharSet += NumberChars;
        }        
        if(hasLowerChars){
            CharSet += LowerChars;
        }
        if(hasUpperChars){
            CharSet += UpperChars;
        }        
        string activationKey= '';       
        Integer randomIndex= 0 ;
        
        for(Integer i=0; i<20;i++){
            if(i==4 || i==8 ||i ==12 || i==16){
                activationKey += '-';              
        }           
            randomIndex = Math.mod(Math.round(Math.random()*120),  CharSet.length());
            activationKey += CharSet.substring(randomIndex,  randomIndex +1);                      
        }
         system.debug(activationKey);
        return activationKey;
    }    
}
//DEBUG|1Xll-9V5l-Iamp-T0lj-1vbL --> parametersız yaparsan...