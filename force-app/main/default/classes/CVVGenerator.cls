/* Generate Card Number in the correct format -->  Example: 4444 4444 4444 4444 4444
 ***************************************************************************************/

public class CVVGenerator {
    @invocableMethod(description='Generate CVV')
      public static List<string> generateCVV() { 
        
        List<String> CVVs = new List<String>();
          
          Integer cvv = (Integer)Math.floor(Math.random() * 1000);
            String cvvString = String.valueOf(cvv).leftPad(3, '0');
              CVVs.add(cvvString);             
             
                //system.debug(cvvString);
                return  CVVs;
    }
}