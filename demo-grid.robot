*** Settings ***
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
Demo
	Open Browser   http://www.google.com   chrome
    ...   remote_url=http://188.166.215.46:4444/wd/hub
	Input Text  name:q   try234
