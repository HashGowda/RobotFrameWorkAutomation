*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Register.html


*** Test Cases ***
Testing Dropdown Selection
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    Selecting Dropdown
    Close Browser



*** Keywords ***
Selecting Dropdown
    Select From List By Label    Skills     Java
    Select From List By Index    Skills   2
    Select From List By Value   yearbox   1994
    #Select From List By Value   monthbox  January
    Select From List By Value   daybox    27
