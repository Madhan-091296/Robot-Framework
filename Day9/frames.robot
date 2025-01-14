*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handle Frames
    Open Browser    ${URL}    chrome    options=add_experimental_option("detach",True)
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Get Element Count
    ${rows}     Get Element Count    //table[@name='BookTable']//tr
    ${cols}     Get Element Count    //table[@name='BookTable']//tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}