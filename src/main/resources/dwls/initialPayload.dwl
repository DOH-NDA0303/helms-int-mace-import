%dw 2.0
import substring from dw::core::Strings
output application/json
---
vars.fileContent map ((item, index) -> {
	"VendorCandidateID": trim(substring(item, 0, 8)),
	"DOB": trim(substring(item, 60, 68)) as Date {format: "yyyyMMdd"} as String {format: "yyyy-MM-dd"} default "",
	"TestDate": trim(substring(item, 182, 190)) as Date {format: "yyyyMMdd"} as String {format: "yyyy-MM-dd"} default "",
	"CompanyCode": trim(substring(item, 190, 202)),
	"LicenseIssueDate": trim(substring(item, 234, 242)) as Date {format: "yyyyMMdd"} as String {format: "yyyy-MM-dd"} default "",
	"ActualExamDate": trim(substring(item, 272, 280)) as Date {format: "yyyyMMdd"} as String {format: "yyyy-MM-dd"} default "",
	"TodaysDate": trim(substring(item, 280, 288)) as Date {format: "yyyyMMdd"} as String {format: "yyyy-MM-dd"} default "",
	"NAC Credential": trim(substring(item, 288, 298)),
	"ExaminationStatus": "Pass",
	"Comments": "Results added by AutoUpdate process"
})