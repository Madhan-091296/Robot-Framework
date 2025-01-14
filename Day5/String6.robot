*** Settings ***
Library    String


*** Test Cases ***
Example for String Validation Keywords
    ${byte_string}    Evaluate    b"test"
    Should Be Byte String    ${byte_string}
    Should Be Lower Case    python
    Should Be String    This is a String
    Should Be Title Case     Python
    ${unicode_string}    Evaluate    u"test"
    Should Be Unicode String    ${unicode_string}
    Should Be Upper Case    PYTHON
    Should Not Be String    ${42}
