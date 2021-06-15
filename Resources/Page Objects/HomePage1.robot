*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${Username_Field}  xpath=//input[@id='user-name']
${Password_Field}  xpath=//input[@id='password']
${Login_Button}  xpath=//input[@id='login-button']
${Error_Path}  xpath=//h3
${Title_Path}  xpath=//h4
${Hamburger_Button}  xpath=//button[@id='react-burger-menu-btn']
${Logout_Button}  xpath=//a[@id='logout_sidebar_link']

*** Keywords ***

#Successful Login
#    [Arguments]  ${Successful_login}
#    Given User Lands on Login Page  ${EXP_LOGIN_TITLE}
#    When User Enters Username  ${Successful_login.Username}
#    And User Enters Password  ${Successful_login.Password}
#    And User clicks on Login Button
#    Sleep  3s
#    Then User Should Land into Products Page  ${EXPECTED_TITLE}
#    And User Clicks on logout
#    Sleep  1s
#    Then User Lands on Login Page  ${EXP_LOGIN_TITLE}

Unsuccessful Login
    [Arguments]  ${Invalid_Username}
    Given User Lands on Login Page  ${EXP_LOGIN_TITLE}
    When User Enters Username  ${Invalid_Username}
    And User Enters Password  ${Invalid_Username}
    And User clicks on Login Button
    Then Error Should be displayed  ${EXPECTED_ERROR}

Test with File
    [Arguments]  ${Testdata}
    FOR  ${Value}  IN  @{Testdata}
        User Lands on Login Page  ${EXP_LOGIN_TITLE}
        User Enters Username  ${Value}
        User Enters Password  ${Value}
        User clicks on Login Button
        Error Should be displayed  ${EXPECTED_ERROR}
    END

User Lands on Login Page
    [Arguments]  ${EXP_LOGIN_TITLE}
    Element Text Should Be  ${Title_Path}  ${EXP_LOGIN_TITLE}

User Enters Username
    [Arguments]  ${credentials}
    Input Text  ${Username_Field}  ${credentials[0]}

User Enters Password
    [Arguments]  ${credentials}
    Input Text  ${Password_Field}  ${credentials[1]}

User clicks on Login Button
    Click Element  ${Login_Button}

Error Should be displayed
    [Arguments]  ${EXPECTED_ERROR}
    Element Text Should Be  ${Error_Path}  ${EXPECTED_ERROR}

User Clicks on logout
    Click Element  ${Hamburger_Button}
    Sleep  1s
    Click Element  ${Logout_Button}
