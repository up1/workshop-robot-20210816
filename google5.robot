***Settings***
Library          SeleniumLibrary
Library          String
Resource		 resources/google.robot
Suite Setup      Go to Google
Suite Teardown   Close Browser

***Variables***
${URL}  https://www.google.com/
${BROWSER}  gc

***Test Cases***
ค้นหาข้อมูลสำเร็จ
    [Template]  Search data from google flow
	popcat           ผลการค้นหาประมาณ
	robotframework   ผลการค้นหาประมาณ
	xyz              ผลการค้นหาประมาณ





