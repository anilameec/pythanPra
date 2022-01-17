*** Setting ***

Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}       ${DBUser}       ${DBPass}       ${DBHost}       ${DBPort}


*** Variables ***
${DBName}       user
${DBUser}       Anil
${DBPass}       X2x@passed
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
Insert data into person table
    ${output}=      Execute SQL String  Select * from person;
    log to console      ${output}
    should be equal as strings  ${output}   None








