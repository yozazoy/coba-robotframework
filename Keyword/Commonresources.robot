*** Settings ***
Documentation       Resources buat test 
Library     Selenium2Library    
Library     BuiltIn
Variables    ../Variable/Variable.py
Variables    ../Locator/Element.py

*** Keywords ***
Open twitter
    Open Browser    ${U_URL}  ${BROWSER}
    Maximize Browser Window
    Page Should Contain     Advanced options
    Set Selenium Speed      0
    #open browser and maximazie it

Input data pribadi             
    [Arguments]                 ${fullname}     ${email}    ${pass}
    Input Text                  id=${NAMA_ID}           ${fullname}
    Input Text                  id=${EMAIL_ID}          ${email}
    Input Text                  id=${PASS_ID}           ${pass}
    #input data sign
klik sign up 
    Click Element               class=doit    
    #klick button sign up

try login
    Open Browser    ${A_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      css=${USERNAME}    ${B_EMAIL}
    Input Text      css=${PASS}        ${S_PASS}
    Click Element   css=${BTN_LOGIN}

test 1
    Click Element   css=${BTN_PROFILE} 
    Click Element   class=${PROFILE}
    Page Should Contain     BENER NIH
    Click Element   id=global-new-tweet-button
    Input Text      css=.tweet-box.rich-editor.is-showPlaceholder      "first tweet nih"