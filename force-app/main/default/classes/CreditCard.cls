/*Generate CVV in the correct format --> Ex: 455
***********************************************************/

public class CreditCard {
    
  @InvocableMethod(description='Generate Credit Card No')
    public static List<string> createCreditCard() {
        
        List<String> creditCardNumbers = new List<String>();
        
         String creditCardNumber = '';
        
          for (Integer i = 0; i < 5; i++) {
            
            String segment = String.valueOf(Math.abs(Math.round(Math.random() * 1000))).leftPad(4, '0');
            
             creditCardNumber += segment;
            
            if (i < 4) {
                
                creditCardNumber += ' ';
            }
          }
           creditCardNumbers.add(creditCardNumber);
        
             return creditCardNumbers;
            // system.debug(creditCardNumbers);
    }
}