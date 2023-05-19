*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser} window
    maximize browser window
    loginToApplication
    sleep   2
    close browser


*** Keywords ***
loginToApplication
    click link  xpath://a[normalize-space()='Log in']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password     Test@123
    click element   xpath://button[normalize-space()='Log in']
