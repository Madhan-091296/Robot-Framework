*** Test Cases ***
Simple If/Else
    ${rc}    Set Variable    0
    
    IF      ${rc}>0
        Log To Console    Positive
    ELSE IF    ${rc}<0
         Log To Console    Negative
    ELSE
         Log To Console    Zero
    END
    
Inline If/Else
    ${rc}    Set Variable    -1
    IF      ${rc}>0      Log To Console    Positive     ELSE IF    ${rc}<0     Log To Console    Negative    ELSE    Log To Console    Zero
        
Nested IF/Else
     ${rc}    Set Variable    16
     
    IF      ${rc}>0
        IF    ${rc}%2==0
            Log To Console    Positive and Even
        ELSE
            Log To Console    Positive and Odd
        END

    ELSE IF    ${rc}<0
         Log To Console    Negative
    ELSE
         Log To Console    Zero
    END

While Loop Even Numbers
    ${i}    Set Variable    2            #initialisation
    WHILE    ${i}<=100                    #condition
        Log To Console   ${i} 
        ${i}    Evaluate    ${i}+2        #Incrementation
    END


While Loop Odd Numbers
    ${i}    Set Variable    1           #initialisation
    WHILE    ${i}<=100                    #condition
        Log To Console   ${i}
        ${i}    Evaluate    ${i}+2        #Incrementation
    END

For Loop Even Numbers
    FOR     ${element}    IN RANGE    2     100     2
        Log To Console    ${element}
    END


For Loop Odd Numbers
    FOR     ${element}    IN RANGE    1     100     2
        Log To Console    ${element}
    END
    
For Loop example with BREAK and CONTINUE
    FOR     ${element}    IN RANGE    0     6
        IF     ${element}==3
            BREAK
        END
        Log To Console    ${element}
    END

    FOR     ${element}    IN RANGE    0     6
        IF     ${element}==3
            CONTINUE
        END
        Log To Console    ${element}
    END