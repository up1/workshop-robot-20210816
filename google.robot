***Settings***
Library  SeleniumLibrary
Library  String
Test Teardown  Close Browser

***Variables***
${URL}  https://www.google.com/
${BROWSER}  gc

***Test Cases***
Testing
	[Tags]  poc
	Should Start With   somkiat   som1

Case 01
	[Tags]  testing
    Go to Google
    ค้นหา popcat
    ตรวจสอบผลการค้นหา

***Keywords***
ตรวจสอบผลการค้นหา
	Wait Until Element Is Enabled  id=result-stats
	${result}=  Get Text   id=result-stats
	Log to console   ${result}
	Should Start With   ${result}   ผลการค้นหาประมาณ
	Should End With   ${result}  )${SPACE}
	
	${stripped}=  Strip String	 ${result}	
	Should End With   ${stripped}  )
    # Wait Until Element Contains  id=result-stats  ผลการค้นหาประมาณ
    # Element Should Contain  id=result-stats  รายการ
	# Element Should Contain  id=result-stats  (
	# Element Should Contain  id=result-stats  )

Go to Google
    Open Browser  ${URL}  browser=${BROWSER}

ค้นหา popcat
    Wait Until Element Is Enabled  name:q  timeout=5s
    Input Text  name:q  popcat
    Press Keys  None  ENTER



