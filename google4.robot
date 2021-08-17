***Settings***
Resource		 resources/google.robot
Suite Setup      Go to Google
Suite Teardown   Close Browser
Test Teardown    กลับไปยังหน้าแรก
Test Template    Search data from google flow

***Test Cases***
# Name   | Input          |  Expected result
Case 01    popcat           ผลการค้นหาประมาณ
Case 02    robotframework   ผลการค้นหาประมาณ
Case 03    xyz              ผลการค้นหาประมาณ