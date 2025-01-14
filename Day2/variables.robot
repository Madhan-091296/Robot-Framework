*** Settings ***
Variables    variables.py

*** Variables ***
${SCALAR_VAR}    Hello
@{LIST_VAR}    Item1    Item2    Item3
&{DICT_VAR}    key1=value1    key2=value2    key3=value3
...             key4=value4


*** Test Cases ***
Test Creating Variables
#    log     ${SCALAR_VAR}
#    Log To Console    ${SCALAR_VAR}
#    Log Many    @{LIST_VAR}
#    Log Many    &{DICT_VAR}
#    Log To Console    ${LIST_VAR}[0]
#    Log To Console    ${LIST_VAR[0]}
#    Log To Console    ${DICT_VAR}[key2]
#    Log To Console    ${DICT_VAR["key3"]}
#    Log To Console    ${DICT_VAR.key4}
#     Log   ${SCALAR_FROM_FILE}
#     Log Many    @{LIST_FROM_FILE}
#     Log Many    &{DICT_FROM_FILE}
#     Log to console    ${CMD_VAR}
#     ${result}=    Add Numbers    5    10
#     Log To Console    ${result}
#      VAR        ${name}    John Doe
#      VAR        @{fruits}    Apple   Banana    Mango
#      VAR        &{person}    name=john    age=30
#      Log Many     ${name}    @{fruits}    &{person}
       set Test Variable    ${TEST_VAR}    Test Value
       Log    ${TEST_VAR}
       Set Suite Variable   ${SUITE_VAR}   Suite Value
       Log    ${SUITE_VAR}
       Set Global Variable  ${GLOBAL_VAR}  Global Value
       Log    ${GLOBAL_VAR}

Using Create List and Create Dictionary
   @{new_list}=    Create List    ItemA    ItemB    ItemC
   Log Many    @{new_list}
   log    ${new_list}[0]
   log    ${new_list[0]}
   ${new_dict}=    Create Dictionary    name=Jane    age=25    city=London
   Log Many    &{new_dict}
   Log    ${new_dict.name}
   Log    ${new_dict["name"]}
   Log    ${new_dict}[name]


    
*** Keywords ***
Add Numbers
    [Arguments]    ${a}    ${b}
    ${sum}=    Evaluate     ${a}+${b}
    RETURN    ${sum}