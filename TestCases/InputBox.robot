*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[normalize-space()='Log in']
    ${"email_text"}     set variable    id:Email

    element should be visible   ${"email_text"}
    element should be enabled   ${"email_text"}
    #element should not be visible   ${"email_text"}

    input text  ${"email_text"}     JohnDavid@gmail.com
    sleep   5
    clear element text   ${"email_text"}
    sleep   3
    close browser



*** Keywords ***

