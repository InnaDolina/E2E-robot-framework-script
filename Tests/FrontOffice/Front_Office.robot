*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup      Launch Web Test
Test Teardown   Close Web Test
# Run the script: robot -d Results Tests/FrontOffice/Front_Office.robot

*** Variables ***
${BROWSER} =        chrome
${FRONTOFFICE_URL} =    https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    Web    001    Smoke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    Web    002    Smoke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page



