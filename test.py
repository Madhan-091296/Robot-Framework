
deletevariable1.py
    a=100
    b=200
    print(a)
    print(b)
    del a  → var deleted
    print(a) → Name Error
    print(b) → Not Executed after Name Error
deletevariable2.py
    s = "Narayana"
    print(s)
    del s valid
    del s[0]          ⇒ TypeError - 'str' object doesn't    support item deletion
