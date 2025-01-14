*** Test Cases ***
Compare Equal Values
#   [Tags]    test:retry(3)
   [Documentation]    Test to Compare Equal Values.
   ${value1}    Set Variable    10
   ${value2}    Set Variable    20
   Should Be Equal    ${value1}    ${value2}    Values are not equal!
Compare Unequal Values
   [Documentation]    Test to Compare Unequal Values.
   ${value1}    Set Variable    10
   ${value2}    Set Variable    10    #change this value and fail wantedly and observe
   Should Not Be Equal    ${value1}    ${value2}    Values should not be equal!
Compare Greater Value
   [Documentation]    Test to Compare Greater Value.
   ${value1}    Set Variable    20
   ${value2}    Set Variable    30
   Should Be True    ${value1} > ${value2}    ${value1} is not greater than ${value2}!