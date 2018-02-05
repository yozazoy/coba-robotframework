*** Settings ***
Documentation       Test sign up twitter data baru
Library             Selenium2Library
Resource            ../Keyword/Commonresources.robot

*** Test Case ***
cd-02 sign up twitter berhasil
    Open twitter
    Input data pribadi      ${B_NAMA}   ${B_EMAIL}   ${S_PASS}
    klik sign up 
    [Tags]      Smoke
    [Teardown]  Close Browser