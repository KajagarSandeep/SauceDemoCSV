*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/Data/FeatureLogin_InputData.robot
*** Keywords ***

Launch Browser
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window


Close The Browser
    Close Browser