*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test suite Setup
Suite Teardown    Log    I am inside TestSuite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...

MySecondTest
    [Tags]    example
    Log    I am inside 2nd test
    Set Tags    regression1
    Remove Tags    regression1

MyThirdTest
    Log    I am inside 3rd test
#FirstSeleniumTest
    #Open Browser    https://google.com    chrome
    #Set Browser Implicit Wait    5
    #Input Text    name=q    Automation step by step
    #Press Keys    name=q    ENTER
    #Click Button    name=btnK
    #Sleep    2
    #Close Browser
    #Log    Tese completed

#SampleLogintest
    #[Documentation]    This is a sample login test
    #Open Browser    ${URL}    chrome
    #Set Browser Implicit Wait    5
    #LoginKW
    #Wait Until Element Is Visible    css:.oxd-userdropdown-tab
    #Click Element    css:.oxd-userdropdown-tab
    #Click Element    link=Logout
    #Close Browser
    #Log    Test completed
    #Log    This test was executed by %{USERNAME} on %{OS}

*** Variables ***
#Variable escalar
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#Variable de lista
@{CREDENTIALS}    Admin    admin123
#Variable de diccionario
&{LGOINDATA}    username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text    name=username    ${CREDENTIALS[0]}
    Input Password    name=password    ${LGOINDATA}[password]
    Click Button    css:.oxd-button