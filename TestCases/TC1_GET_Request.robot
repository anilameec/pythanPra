*** Setting ***

Library  RequestsLibrary
Library     Collections


*** Variables ***
${base_Url}     https://reqres.in/api/users/
${base_num}     1



*** Test Cases ***
TC1
    Get_weatherInfo     ${base_Url}
    ${res}=     Get request     google      ${base_num}
    log to console      ${res.content}


    #validations
    ${res_body}=    convert to string       ${res.content}
    should not contain  ${res_body}     Georgg

*** Keywords ***
Get_weatherInfo
    [Arguments] ${appurl} ${num}
    Create Session    google    ${appurl}   ${num}








