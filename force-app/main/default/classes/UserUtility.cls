public class UserUtility {    
    //Inner class
    //add parameter as List of inner class    
   public class request{           
     @invocableVariable(Description= 'First Name')
        public string FirstName;
       
       @invocableVariable(Description= 'Last Name')
        public string LastName;
   }      
 @invocablemethod(Description='New User')
  public static List<string> newUser(List<request>params){//parametera flowdan girilcek//tek isimde olsa List olmalı flowda calismasicin
        
        Profile prof= [SELECT Id ,Name FROM Profile WHERE Name='Identity User'];        
        User newUser = new User();
        
        String FirstName=params[0].FirstName;
        String LastName= params[0].LastName;

        newUser.FirstName = FirstName;
        newUser.LastName = LastName;
        newUser.Email= FirstName+'.' + LastName +'@flowkursu.com';
        newUser.username= FirstName+'.' + LastName +'@flowkursu.com.dev';
        newUser.Alias=firstName.substring(0,2) + lastName.substring(0,2).toLowerCase();

        newUser.TimeZoneSidKey = 'America/New_York'; 
        newUser.LocaleSidKey = 'en_US'; 
        newUser.EmailEncodingKey = 'UTF-8';
        newUser.LanguageLocaleKey = 'en_US'; 
        newUser.ProfileId = prof.Id;
        newUser.Country = 'America';
              insert newUser;    
        
        string successMessage= 'New User with the Name' +FirstName + ' ' + LastName + ' created.';
        
        List<string> response = new List<string>();
        response.add(successMessage);
        return response;        
      }              
   }