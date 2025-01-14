*** Settings ***
Library    SeleniumLibrary
Resource    ./login_page_resource.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template    Login Functionality

*** Variables ***
${DASHBOARD_URL}   https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${ERROR_MSG}      Invalid credentials

*** Test Cases ***
Right User Right Pass     Admin    admin123
Right User Wrong Pass     Admin    admin12
Wrong User Right Pass     Admi    admin123
Wrong User Wrong Pass     Admi    admin12




*** Keywords ***
Login Functionality
     [Arguments]    ${username}    ${password}
     Input Username    ${username}
     Input Password    ${password}
     Click Login Button
     ${current_url}=    Get Location
     Log    Current URL: ${current_url}    console=True
     Run Keyword If    '${current_url}' == '${DASHBOARD_URL}'    Handle Successful Login
     ...    ELSE    Handle Failed Login
     Log    Final Login Status: ${login_status}    console=True
Handle Successful Login
     Log    Login successful    console=True
     Set Test Variable    ${login_status}    PASSED
     Click Logout Link
Handle Failed Login
     Log    Login failed    console=True
     ${error_visible}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//p[contains(text(), "${ERROR_MSG}")]
     Log    Error Message Visible: ${error_visible}    console=True
     Set Test Variable    ${login_status}    FAILED