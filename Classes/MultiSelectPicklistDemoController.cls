public class MultiSelectPicklistDemoController{

    /*DEFAULT CONTRUCTORS */
    public MultiSelectPicklistDemoController(){
    
    }
    
    /*
    * Method Name   : getAllPicklistValues
    * Description   : Method will Fetch picklist Values Dynamically    
    * @param        : None
    * @returns      : Picklist values as string 
    */
    
    public static String getAllPicklistValues(){
        
        List<String> productPickListValue = new List<String>();
        Schema.DescribeFieldResult productFieldDescribe = Account.Product__c.getDescribe();
        for(Schema.PicklistEntry loop_var : productFieldDescribe.getPicklistValues()){
              productPickListValue.add(loop_var.getLabel());
        }
        return JSON.serialize(productPickListValue);
    }
    
}