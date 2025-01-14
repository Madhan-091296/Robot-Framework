*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://www.amazon.in/ref=nav_logo
${COOKIE_NAME}    MyCookie
${COOKIE_VALUE}    123456

*** Test Cases ***
Handle Dropdown and Cookies
      Open Browser    ${URL}    chrome    options=add_experimental_option("detach",True)
      Maximize Browser Window
      Set Selenium Implicit Wait    10s
      
#      Select From List By Label       //select[@id='country']        France
#      Select From List By Value        //select[@id='country']        australia
#      Select From List By Index          //select[@id='country']    3
#        ${options}    Get List Items      //select[@id='country']
#        Log To Console    ${options}
#        ${count}    Get Length    ${options}
#        Log To Console    ${count}


         ${all_cookies}=    Get Cookies    bool=True
       ${total_cookies}    Get Length    ${all_cookies}
       Log To Console    Total number of cookies created: ${total_cookies}
       Log Many    ${all_cookies}
       Add Cookie    name=${COOKIE_NAME}    value=${COOKIE_VALUE}
       ${all_cookies}=    Get Cookies    bool=True
       ${total_cookies}    Get Length    ${all_cookies}
       Log To Console    Total number of cookies created: ${total_cookies}
       ${retrieved_cookie}=    Get Cookie    ${COOKIE_NAME}
       Log To Console    Retrieved cookie details: ${retrieved_cookie}
       Delete All Cookies
       ${all_cookies}=    Get Cookies    bool=True
       ${total_cookies}    Get Length    ${all_cookies}
       Log To Console    Total number of cookies created: ${total_cookies}
       Close Browser

       Link
