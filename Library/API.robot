*** Settings ***
Library         OperatingSystem
Library         String
Library         RequestsLibrary

*** Keywords ***
Post Method
    [Documentation]     Post request
    [Arguments]         ${service_name}   ${service_url}          ${uri}       ${parameter}=   ${payload}=
    Create Session      ${service_name}   ${service_url}          verify=True
    ${response}         Post       url=${service_url}    params=${parameter}   data=${payload}
    [Return]            ${response}

Get Method
    [Documentation]     Get request
    [Arguments]         ${service_name}   ${service_url}          ${uri}        ${parameter}=   ${payload}=
    Create Session      ${service_name}   ${service_url}          verify=True
    ${response}         Get       url=${service_url}    params=${parameter}
    [Return]            ${response}