*** Settings ***
Library   SeleniumLibrary
Resource  ../pages/signup.robot
Resource  ../pages/thankyou.robot

*** Test Cases ***
สมัครสมาชิกใหม่สำเร็จ
	เปิด browser
	signup.เปิด
	signup.กรอกข้อมูล  firstname  lastname  address  zipcode
	signup.ยืนยัน
	thankyou.ตรวจสอบข้อมูล


*** Keywords ***
เปิด browser
	Open Browser   about:blank   chrome