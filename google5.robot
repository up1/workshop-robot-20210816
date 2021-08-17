***Settings***
Resource		 resources/google.robot
Suite Setup      Go to Google
Suite Teardown   Close Browser

***Test Cases***
ค้นหาข้อมูลสำเร็จ
    [Template]  Search data from google flow
	popcat           ผลการค้นหาประมาณ
	robotframework   ผลการค้นหาประมาณ
	xyz              ผลการค้นหาประมาณ