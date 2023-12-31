*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../../Data/InputData.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup      Launch Web Test
Test Teardown   Close Web Test
# Run the script: robot -d Results Tests/E2E/E2E.robot


*** Test Cases ***
Should be able to access both sites
    [Documentation]    This is my E2E suite
    [Tags]    Web    001    Smoke
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page



