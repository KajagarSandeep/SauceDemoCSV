*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${PROD_TITLE_PATH}  xpath=//span[@class='title']

*** Keywords ***

User Should Land into Products Page
    [Arguments]  ${EXPECTED_TITLE}
    Element Text Should Be  ${PROD_TITLE_PATH}  ${EXPECTED_TITLE}