*** Settings ***
Library   RequestsLibrary

*** Test Cases ***
Success with Get user by id
	${response}=  GET  https://jsonplaceholder.typicode.com/users/1
    Should Be Equal As Strings    1   ${response.json()}[id]
	Should Be Equal    Leanne Graham   ${response.json()}[name]
