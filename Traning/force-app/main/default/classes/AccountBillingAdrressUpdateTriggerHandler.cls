public with sharing class AccountBillingAdrressUpdateTriggerHandler {
    public AccountBillingAdrressUpdateTriggerHandler() {

    }
    public static void updateShippingAddress(List<Account> accountList){
        try{
            if(accountList != null && accountList.size() > 0){
                for(Account accObj : accountList){
                    if(accObj.BillingCity != null){
                        accObj.ShippingCity = accObj.BillingCity;
                    }
                    if(accObj.BillingCountry != null){
                        accObj.ShippingCountry = accObj.BillingCountry;
                    }
                    if(accObj.BillingPostalCode != null){
                        accObj.ShippingPostalCode = accObj.BillingPostalCode;
                    }
                    if(accObj.BillingState != null){
                        accObj.ShippingState = accObj.BillingState;
                    }
                    if(accObj.BillingStreet != null){
                        accObj.ShippingStreet = accObj.BillingStreet;
                    }
                }
            }
            
        }catch(Exception exp){
            System.debug('Exception exp-->'+exp.getMessage()+'Line Number-->'+exp.getLineNumber());
        }
    }
}