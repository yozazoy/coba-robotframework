*** Settings ***
Documentation       tet ubah data profile
Library             Selenium2Library
Library             BuiltIn
Variables           ../Variable/Variable.py
Resource            ../Keyword/Commonresources.robot

*** Test Case ***
cd-03 ubah profile
    try login
    Set Selenium Speed      0
    Page Should Contain Button      css=${BTN_TWEET}
    test 1  
    [Teardown]      Close Browser