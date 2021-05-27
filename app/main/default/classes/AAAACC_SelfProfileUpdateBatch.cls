public class AAAACC_SelfProfileUpdateBatch {
// This class exists in order to be the first class in the list 
// It is used to temporarily fix the issue whereby SFDC doesn't recognize Account.Customer_in_production__c & Account.NSC_Allowed__c 
// due to older API version classes existing within the org 
    public static boolean DummyMethod1() { 
        
        User loggedInUser = [select id,LocaleSidKey,EmailEncodingKey,LanguageLocaleKey,ProfileId,UserRoleId,
                             Account.Customer_in_production__c,
                             Profile.Name,Profile_Name__c from user where id =:userInfo.getUserId() limit 1];
        
        User loggedInUser2 = [select id,Email,usertype,AccountId,Account.NSC_Allowed__c,Account.TC_Allowed__c, ContactId,Contact.AccountId,
                              Profile.Name,Profile_Name__c from user where id =:userInfo.getUserId() limit 1];    
        
        return true; 
        
    }



}