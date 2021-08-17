*** Settings ***
Library    FakerLibrary

*** Test Cases ***
Demo
	FOR   ${index}  IN RANGE   10
        ${email}=  Email
		Log to console  ${email}
    END
