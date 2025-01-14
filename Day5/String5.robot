*** Settings ***
Library    String


*** Test Cases ***
Example for String Replacement and Removal Keywords
    ${updated_string}    Remove String    Hello World!    World
    Log To Console    ${updated_string}
    ${updated_string}    Remove String Using Regexp    abc123xyz    [a-z]+
    Log To Console    ${updated_string}
    ${updated_string}    Replace String    Hello World!    World    Universe
    Log To Console    ${updated_string}
    ${updated_string}  Replace String Using Regexp    abc123xyz    [a-z]+    456
    Log To Console    ${updated_string}
    