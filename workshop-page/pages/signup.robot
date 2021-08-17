*** Keywords ***
เปิด
	Go to  https://www.kimschiller.com/page-object-pattern-tutorial/

กรอกข้อมูล
	[Arguments]  ${firstname}  ${lastname}  ${address}  ${zipcode}
	Input Text   id:firstname   ${firstname}
	Input Text   id:lastname   ${lastname}
	Input Text   id:address   ${address}
	Input Text   id:zipcode   ${zipcode}

ยืนยัน
	Click Element   id:signup

