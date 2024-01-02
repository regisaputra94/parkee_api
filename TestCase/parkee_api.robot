*** Settings ***
Resource         ../Library/API.robot

*** Test Cases ***
Positive Cases
    [Documentation]     Positive Cases
    ${response}=        Get Method   service_name=Get Data   service_url=https://reqres.in/api/users        uri=/users
    ${response}         Set Variable  ${response.json()}
    Log                 ${response}

Negative Cases

