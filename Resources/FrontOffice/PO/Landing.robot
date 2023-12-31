*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Tests/FrontOffice/Front_Office.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =     id=mainNav

*** Keywords ***
Navigate To
    go to   ${LANDING_URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}
