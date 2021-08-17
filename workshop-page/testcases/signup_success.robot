*** Settings ***
Library   SeleniumLibrary
Resource  ../pages/signup.robot
Resource  ../pages/thankyou.robot

*** Test Cases ***
สมัครสมาชิกใหม่สำเร็จ
	เปิด browser
	สมัครสมาชิกใหม่
	thankyou.ตรวจสอบข้อมูล

*** Keywords ***
สมัครสมาชิกใหม่
	signup.เปิด
	signup.กรอกข้อมูล  firstname  lastname  address  10400
	signup.ยืนยัน

เปิด browser
	Open Browser   about:blank   chrome