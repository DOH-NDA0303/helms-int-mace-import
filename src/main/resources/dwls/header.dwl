%dw 2.0
output application/json

---
[{
	"File_Name__c": vars.fileName,
	"File_Type__c": "",
	"Date_Imported__c": (now() as Date {format: "yyyy-MM-dd"} as String {format: "yyyy-MM-dd"})
}]