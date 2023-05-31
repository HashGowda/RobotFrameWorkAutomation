*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
Reg Test

        ${spead}=   get selenium speed
        log to console  ${spead}

        open browser    ${url}  ${browser}
        maximize browser window

        set selenium speed  2 seconds

        select radio button     Gender  M

        input text  name:FirstName  David
        input text  name:LastName   John
        input text  name:Email  anhc@gmail.com
        input text  name:Password   davidjohn
        input text  name:ConfirmPassword    davidjohn

        ${spead}=   get selenium speed
        log to console  ${spead}



*** Keywords ***


