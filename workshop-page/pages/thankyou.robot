*** Keywords ***
ตรวจสอบข้อมูล
	Wait Until Element Contains   xpath:/html/body/h1   Thank you!
	Wait Until Element Contains   xpath:/html/body/p    You are now subscribed to our service.