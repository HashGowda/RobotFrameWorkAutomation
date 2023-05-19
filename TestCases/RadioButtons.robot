*** Settings ***
Library     SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.practicehttps://opensource-demo.orangehrmlive.com/web/index.php/auth/loginselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    LoginToApplication
    close browser




*** Keywords ***
LoginToApplication
    input text  xpath://input[@placeholder='Username']
    input text  xpath://input[@placeholder='Password']
    click element   xpath://button[normalize-space()='Login']

    click element   xpath://span[normalize-space()='My Info']


    #Selecting Radio Button
    select radio button   radio  2

    select radio button     radio   1


    #Selecting Check Box
    select checkbox   Yes

    select checkbox     checkbox


    #Unselecting Check Box
    unselect checkbox   checkbox

