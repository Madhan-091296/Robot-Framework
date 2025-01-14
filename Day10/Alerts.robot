*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/


*** Test Cases ***
Handle Tables
    Open Browser    ${URL}    edge   options=add_experimental_option("detach",True)
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

    Click Element    //button[@id="promptBtn"]
    Alert Should Be Present    Please enter your name:    action=LEAVE
#    Alert Should Not Be Present    Please enter your nameeeeeeeee:
    Sleep    3s
    Input Text Into Alert    Python    action=ACCEPT
    Page Should Contain    Python