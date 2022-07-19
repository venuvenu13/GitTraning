@isTest
private class TriggerOnAccountTest {

    static testMethod void updateAccountBillingAddressTest() {
        Test.startTest();
        Account accountObj = new Account();
        accountObj.Name = 'Test Name';
        accountObj.BillingCity = 'City';
        accountObj.BillingCountry = 'Country';
        accountObj.BillingState = 'State';
        accountObj.BillingStreet = 'Street';
        accountObj.BillingPostalCode = 'Postalcode';
        insert accountObj;
        
        System.assertEquals(true, accountObj.Id != null);
        
        Test.stopTest();
    } 
}