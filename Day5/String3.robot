*** Settings ***
Library    String

*** Variables ***
${string}    Learning, Python, is, very easy!!!
${multi_line_string}    Line 1: Learning Python is very easy !!!\nLine 2: Python is awesome\nLine 3: Python is great
${pattern}    *  #  Matches all words in the string
${regexp_pattern}    [a-z]+  #  Matches one or more lowercase letters (a to z)

*** Test Cases ***
Demonstrate String Extraction and Substring Opeartions
    ${left}    Fetch From Left    ${string}    marker=,
    Log To Console    ${left}

    ${right}    Fetch From Right        ${string}    marker=,
    Log To Console    ${right}
    
    ${line}    Get Line    ${multi_line_string}    2
    Log To Console    ${line}

     ${line_couint}    Get Line Count       ${multi_line_string}
    Log To Console     ${line_couint}
    
    ${lines_contain}    Get Lines Containing String    ${multi_line_string}    great
    Log To Console    ${lines_contain}
    
    ${regexp_matches}    Get Regexp Matches    ${string}    ${regexp_pattern}
    Log To Console    ${regexp_matches}
    
    ${substring}    Get Substring    ${string}     9    15
    Log To Console    ${substring}
