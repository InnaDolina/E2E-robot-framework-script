*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup      Launch Web Test
Test Teardown   Close Web Test
# Run the script: robot -d Results Tests/BackOffice/Back_Office.robot

*** Variables ***
${BROWSER} =        chrome
${LANDING_URL_BACK_OFFICE} =    https://automationplayground.com/back-office/pages/index.html

*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]    This is test 1
    [Tags]    Web    001    Smoke
    BackOfficeApp.Go to Landing Page
#    BackOfficeApp.Go to "Team" Page



