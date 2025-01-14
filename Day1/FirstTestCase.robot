#Open Web Browser(Chrome/firefox/Edge).
#Open URL  https://opensource-demo.orangehrmlive.com/
#Enter username  (Admin).
#Enter password  (admin123).
#Click on Login.
#Capture title of the home page.(Actual title)
#Verify title of the page: OrangeHRM    (Expected)
#close browser

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    chrome 
${exp_title}        OrangeHRM
${USERNAME}    Admin
${PASSWORD}    admin123


*** Test Cases ***
Login Test
    [Documentation]     This is test case for login to the application
    Open Browser   ${URL}  ${Browser}  options=add_experimental_option("detach",True)
    Maximize Browser Window
    Set Selenium Implicit Wait    3s
    Login steps


*** Keywords ***
Login steps
    Input Text    name=username    ${USERNAME}
    Input Text    name=password   ${PASSWORD}
    Click Button    xpath=//button
    ${act_title}=   Get Title     # Actual Title
    Should Be Equal    ${act_title}    ${exp_title}
    Close Browser



*** Comments ***
    This is Login Test Case of Orange HRM