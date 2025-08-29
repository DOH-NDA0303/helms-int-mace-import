%dw 2.0
import * from dw::core::Strings
output application/json
---
(message.payload) map ((item,index) -> {
	"ExamFileName__c": vars.fileName as String default "" replace "\"" with(""),
	"Address__Street__s": item.ResidenceStreet,
	"Address__City__s": item.ResidenceCity,
	"Residence_County_Literal__c":item.ResidenceCounty,
	"State__c": item.State as String default "" replace "\"" with(""),
	"Address__PostalCode__s": item.ResidencePostalCode,
	"Address__c": item.ResidenceAddress,
	"ExamFileIdnt__c":item.StateFileNumber as String default "" replace "\"" with(""),
    "Age__c": if(!isBlank(item.Age)) item.Age as Number else item.Age as String default "",
	"Exam_County_Literal__c": item.ExamCounty as String default "" replace "\"" with(""),
	"Exam_County_Code__c": item.UnderlyingCODCode as String default "" replace "\"" with(""),
    "Exam_Date__c": item.DateofExam as Date {"format": "MM/dd/yyyy"} as Date {"format": "yyyy-MM-dd"},
	"First_Name__c": item.DecedentFirstName as String default "" replace "\"" with(""),
	"Last_Name__c": item.DecedentLastName as String default "" replace "\"" with(""),
	"Middle_Name__c": item.DecedentMiddleName as String default "" replace "\"" with(""),
	"Gender__c": item.Sex as String default "" replace "\"" with(""),
    "Last_4__c": if(!isBlank(item.SocialSecurityNumber)) item.SocialSecurityNumber last 4 as Number else item.SocialSecurityNumber as String default "",
    "Birth_Date__c": item.DateofBirth as Date {"format": "MM/dd/yyyy"} as Date {"format": "yyyy-MM-dd"},
    "Residence_City_Literal__c":  item.ResidenceAddress.City as String default "" replace "\"" with(""),
	"Residence_County_Literal__c": item.ResidenceAddress.County__c as String default "" replace "\"" with(""),
    "Suffix__c": item.DecedentSuffix as String default "" replace "\"" with(""),
    "Address__PostalCode__s": item.ResidencePostalCode as String default "" replace "\"" with("")
})