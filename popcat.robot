*** Settings ***
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***


*** Test Cases ***
Case 01
	Start game
	ผู้เล่นทำการกดปุ่ม
    ตรวจสอบผลของการนับ pop

*** Keywords ***
ผู้เล่นทำการกดปุ่ม
	Press Keys	 None	x

Start game
    Open Browser   https://popcat.click   browser=chrome
	Maximize Browser Window

ตรวจสอบผลของการนับ pop
	Wait Until Element Contains  xpath://*[@id="app"]/div/div  1

