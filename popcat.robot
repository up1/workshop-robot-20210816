*** Settings ***
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${URL}  https://popcat.click
${BROWSER}  chrome

*** Test Cases ***
Case 01
	Start game
	ผู้เล่นทำการกดปุ่ม
    ตรวจสอบผลของการนับ pop

*** Keywords ***
ผู้เล่นทำการกดปุ่ม
	Press Keys	 None	x

Start game
    Open Browser   ${URL}    browser=${BROWSER}
	Maximize Browser Window

ตรวจสอบผลของการนับ pop
	Wait Until Element Contains  xpath://*[@id="app"]/div/div  1

