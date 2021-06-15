*** Settings ***
Resource  ../Resources/Base File/BaseFile1.robot
Resource  ../Resources/Page Objects/HomePage1.robot
Resource  ../Resources/Page Objects/ProductsPage1.robot
Resource  ../Resources/DataManager/DataManage.robot
Resource  ../Data/InputData1.robot

Suite Setup  Launch Browser
Suite Teardown  Close The Browser

*** Test Cases ***
#Scenario1: Verify Successful Login
#    [Template]  Successful Login
#    ${Successful_login}

#Scenario2: Verify Unsuccessful Login
#    [Template]  Unsuccessful Login
#    ${Invalid_Username}
#    ${Invalid_Password}
#    ${Username_password_invalid}
#    ${Blank}

Test with CSV File
    ${Testdata} =  DataManage.Get data from CSV file  ${InputFilePath}
    Test with File  ${Testdata}