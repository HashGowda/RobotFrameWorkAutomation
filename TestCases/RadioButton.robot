*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Register.html


*** Test Cases ***
Tesing Radio Button
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    SelectingRadioButton
    close browser


*** Keywords ***
SelectingRadioButton

    #selecting radio button
    select radio button   radiooptions    Male

    select radio button   radiooptions   FeMale
