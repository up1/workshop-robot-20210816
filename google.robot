***Settings***
Library  SeleniumLibrary
Test Teardown  Close Browser

***Variables***
${URL}  https://www.google.com/
${BROWSER}  gc

***Test Cases***
Case 01
    Go to Google
    ค้นหา popcat
    ตรวจสอบผลการค้นหา

***Keywords***
Go to Google
    Open Browser  ${URL}  browser=${BROWSER}

ค้นหา popcat
    Wait Until Element Is Enabled  name:q  timeout=5s
    Input Text  name:q  popcat
    Press Keys  None  ENTER

ตรวจสอบผลการค้นหา
    Wait Until Element Contains  id=result-stats  ผลการค้นหาประมาณ
    Element Should Contain  id=result-stats  รายการ
