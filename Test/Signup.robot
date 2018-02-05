*** Settings ***
Documentation       Test sign up twitter  dengang data yg udh terregister
Library             Selenium2Library
Library             BuiltIn
Variables           ../Variable/Variable.py
Resource            ../Keyword/Commonresources.robot


*** Test Case ***

CD-01 Sign Up Twitter salah
    Open twitter
    Input data pribadi      ${s_nama}   ${S_EMAIL}   ${S_PASS}
    Page Should Contain     This email is already registered
    klik sign up 
    [Tags]      Smoke
    [Teardown]  Close Browser

