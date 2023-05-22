*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/select-menu


*** Test Cases ***
Testing Dropdown Selection
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    Selecting Multiple Options Dropdown
    Close Browser



*** Keywords ***
Selecting Multiple Options Dropdown
    Select From List By Label    Select      Blue
    Select From List By Label    Select      Black

    Unselect From List By Label    Select    Black
