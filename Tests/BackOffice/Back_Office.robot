*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../../Data/InputData.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup      Launch Web Test
Test Teardown   Close Web Test
# Run the script: robot -d Results Tests/BackOffice/Back_Office.robot


*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]    This is test 1
    [Tags]    Web    001    Smoke
    BackOfficeApp.Go to Landing Page



