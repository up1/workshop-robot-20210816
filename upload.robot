*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}   http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Test Cases ***
ทำการ upload ไฟล์สำเร็จ
	เลือก 1 ไฟล์
	ตรวจสอบข้อมูลของไฟล์
	ทำการ upload ไฟล์ไปยัง server 

*** Keywords ***
ทำการ upload ไฟล์ไปยัง server 
	Click Element   xpath://div[2]/table/tbody/tr/td[5]/button[1]
	Wait Until Page Contains Element   xpath://div[@style="width: 100%;"]

ตรวจสอบข้อมูลของไฟล์
	Wait Until Element Contains   xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/p  
    ...  Queue length: 1
	${file_name}=  Get Table Cell  xpath://div[2]/table  row=2  column=1
	Should Be Equal   data01.png   ${file_name}
	${file_size}=  Get Table Cell  xpath://div[2]/table  row=2  column=2
	Should Be Equal   0.20 MB   ${file_size}

เลือก 1 ไฟล์
	Open Browser   ${URL}  chrome
	Choose File  xpath://div/div[2]/div[1]/input[2]  
    ...  ${CURDIR}/data_tests/data01.png