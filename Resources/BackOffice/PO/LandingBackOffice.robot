*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Tests/BackOffice/Back_Office.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =     id=mainNav

*** Keywords ***
Navigate To
    go to   ${LANDING_URL_BACK_OFFICE}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}
