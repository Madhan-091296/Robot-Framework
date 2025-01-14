*** Settings ***
Library    String

*** Test Cases ***
Example for Format and Random String Generation
    ${formatted_string}    Format String    Hello {name}! your age is {age}    name=Johnny    age=17
    Log To Console    ${formatted_string}
    
    ${random_string}    Generate Random String    chars='[NUMBERS]'
    Log To Console    ${random_string}
