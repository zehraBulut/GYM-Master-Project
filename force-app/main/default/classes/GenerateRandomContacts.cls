public class GenerateRandomContacts {
    
    public class request{    //Inner class
        
     @invocableVariable(Description= 'Mentor Id')
        public Integer numberOfContacts;        
  
     @invocableVariable(Description= 'Mentor Id')
        public String FirstName;  
        
     @invocableVariable(Description= 'Mentor Id')
        public String LastName;  
    }
    
  @invocablemethod(Description='Create Sample Contacts')
   public static void GenerateContacts(List<request>params){//Inner class List olmalı Parameter kulanıcaksak
        
     List<Contact> conList= new List<Contact>();
        for(Integer i=1; i<=params[0].numberOfContacts; i++){
            
          Contact con = new Contact();
            
            con.FirstName = params[0].FirstName;
            con.LastName= params[0].LastName;             
               conList.add(con);            
        }  
               insert conList;
    }
}