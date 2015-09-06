/*
--> CreatedBy   : Ratan Paul
--> CreatedDate : 06/Sep/2015 
*/
public with sharing class RN_GenericDataTableJS 
{
    public String strQuery {get;set;}
    public List<String> lstFields {get;set;}
    public List<String> lstFieldAPIs {get;set;}
    public List<Sobject> lstSobj {get;set;}
    
    public RN_GenericDataTableJS(){
    }
   
    public List<Sobject> getLstSobject(){
        try{
            lstFields = new List<String>();
            lstSobj = new  List<Sobject>();
            lstFieldAPIs = new List<String>();
            
            lstSobj = database.query(strQuery);
            
            String strFields = strQuery.substringBetween('SELECT','FROM');
                                        
            Map<String, Schema.SObjectField> mfields = lstSobj[0].Id.getSObjectType().getDescribe().fields.getMap();
            for(String strField : strFields.split(','))
            {
                lstFieldAPIs.add(strField.trim());
                lstFields.add(String.valueOf(mfields.get(strField.trim()).getDescribe().getlabel()));
            }
        }
        catch(exception ex)
        {
            system.debug('============='+ex.getlineNumber());
        }
        return lstSobj;
    }
    
    public void updateRecords(){
        update lstSobj;
    }
    public void dummy(){    }
}