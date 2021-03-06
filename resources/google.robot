***Settings***
Library          SeleniumLibrary
Library          String

***Variables***
${URL}  https://www.google.com/
${BROWSER}  gc

***Keywords***
Search data from google flow
	[Arguments]  ${keyword}  ${expected result}
    ค้นหา "${keyword}" นะ
    ตรวจสอบผลการค้นหา
	กลับไปยังหน้าแรก

กลับไปยังหน้าแรก
	Go To  ${URL}
# Embedded arguments in keywords
ค้นหา "${keyword}" นะ   
	Wait Until Element Is Enabled  name:q  timeout=5s
    Input Text  name:q  ${keyword}
    Press Keys  None  ENTER

ตรวจสอบผลการค้นหา
	Wait Until Element Is Enabled  id=result-stats
	${result}=  Get Text   id=result-stats
	Log to console   ${result}
	Should Start With   ${result}   ผลการค้นหาประมาณ
	Should End With   ${result}  )${SPACE}
	
	${stripped}=  Strip String	 ${result}	
	Should End With   ${stripped}  )
    
	@{words}=  Split String  ${stripped}  ${SPACE}  3
	Should Be Equal   ผลการค้นหาประมาณ   ${words}[0]
	# Should Be Equal   2,870,000   ${words}[1]
	Should Be Equal   รายการ   ${words}[2]
	Should Start With   ${words}[3]   (
	Should End With   ${words}[3]  )

Go to Google
    Open Browser  ${URL}  browser=${BROWSER}