*** Settings ***
Library        Dialogs

*** Test Cases ***
Try Except Else Finally Example
    TRY
        ${x}    Get Value From User    Enter First Number:
        ${y}    Get Value From User    Enter Second Number:
        ${result}    Evaluate    ${x}/${y}
        Log To Console    ${result}

    EXCEPT    ZeroDivisionError
        Log To Console    Throwing ZeroDivision Error
    EXCEPT    FileNotFoundError
         Log To Console    Throwing FileNotFoundError Error

    EXCEPT                # Match any error.
        Log To Console    Exception Handled
    ELSE
          Log To Console    No Exceptions Occured
    FINALLY
        Log To Console    Always Executed

    END



