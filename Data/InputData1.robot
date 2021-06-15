*** Variables ***
#Common Variabls
${EXPECTED_TITLE}  PRODUCTS
${URL}  https://www.saucedemo.com
${BROWSER}  Chrome
${EXPECTED_ERROR}  Epic sadface: Username and password do not match any user in this service
${USERNAME}  Hello
${PASSWORD}  Pasds
${EXP_LOGIN_TITLE}  Accepted usernames are:
${InputFilePath}  E:\\RobotFramework\\SauceLabsProject CSV\\Data\\Invalid_Login.csv
#Input Data
#&{Successful_login}  Username=standard_user  Password=secret_sauce
#&{Invalid_Username}  Username=hjgbsfhg  Password=secret_sauce
#&{Invalid_Password}  Username=standard_user  Password=gysgfuj
#&{Username_password_invalid}  Username=dhbfsh  Password=jhfuhu
#&{Blank}  Username=#Blank  Password=#Blank