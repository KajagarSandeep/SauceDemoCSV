*** Settings ***
Library  ../CustomLibrary/testdata.py

*** Keywords ***

Get data from CSV file
    [Arguments]  ${InputFilePath}
    ${Data} =  test data  ${InputFilePath}
    [Return]  ${Data}