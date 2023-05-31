*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
Time out Test

        open browser    ${url}  ${browser}
        maximize browser window

        wait until page contains    Register

        select radio button     Gender  M
        input text  name:FirstName  David
        input text  name:LastName   John
        input text  name:Email  anhc@gmail.com
        input text  name:Password   davidjohn
        input text  name:ConfirmPassword    davidjohn


*** Keywords ***



