# DatatableJSVF
Datatable with visulaforce salesforce. It is a generic component with inline edit functionality. 


[Website](http://ratanpaul.github.io/DatatableJSVF)

[Installation package](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t900000002Zkf)

Features
- Inline edit functionality.
- Pagination.
- Global search.
- Sorting
- Fixed header


Use this component in visualforce page 
```
<c:RN_GenericDataTableJS stringQuery="SELECT Id, Name, Phone, ratan__Active__c, CreatedDate FROM Account LIMIT 100" />
```

![DatatableJS](https://raw.githubusercontent.com/RatanPaul/imges/master/img/DataTableJS.png)

