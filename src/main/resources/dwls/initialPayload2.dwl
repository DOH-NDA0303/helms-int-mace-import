%dw 2.0
output application/json
import * from dw::core::Strings
---
(payload.fileContent replace "\r\n" with "\n") 
splitBy "\n" 
filter (!isEmpty($))
map ((item, index) -> {
    SSN: trim(substring(item, 0, 10)),
    LastName: trim(substring(item, 10, 30)),
    FirstName: trim(substring(item, 30, 50)),
    MiddleInitial: trim(substring(item, 50, 52)),
    BirthDate: trim(substring(item, 52, 60)),
    Address1: trim(substring(item, 60, 90)),
    Address2: trim(substring(item, 90, 120)),
    City: trim(substring(item, 120, 140)),
    State: trim(substring(item, 140, 142)),
    ZipCode: trim(substring(item, 142, 152)),
    Phone: trim(substring(item, 152, 168)),
    Gender: trim(substring(item, 168, 170)),
    Ethnicity: trim(substring(item, 170, 172)),
    EducationLevel: trim(substring(item, 172, 174)),
    TestDate: trim(substring(item, 174, 182)),
    CompanyCode: trim(substring(item, 182, 194)),
    FacilityName: trim(substring(item, 194, 224)),
    ExamLevel: trim(substring(item, 224, 226)),
    LicenseIssueDate: trim(substring(item, 226, 234)),
    LicenseExpirationDate: trim(substring(item, 234, 242)),
    RawScore_GeneralPortion: trim(substring(item, 242, 245)),
    PassFail_GeneralPortion: trim(substring(item, 245, 246)),
    RawScore_PracticalExam: trim(substring(item, 246, 249)),
    PassFail_PracticalExam: trim(substring(item, 249, 250)),
    RawScore_Comprehensive: trim(substring(item, 250, 253)),
    PassFail_Comprehensive: trim(substring(item, 253, 254)),
    NAC_Credential: trim(substring(item, 254, 255)),
    Filler: trim(substring(item, 255, 260)),
    WrittenExamDate: trim(substring(item, 260, 268)),
    FileGeneratedDate: trim(substring(item, 268, 276)),
    NAECode: trim(substring(item, 276, 286))
})