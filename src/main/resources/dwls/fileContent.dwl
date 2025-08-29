%dw 2.0
output application/java
---
(payload.fileContent.attributes.name orderBy $) default []