*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Tests/BackOffice/Back_Office.robot

*** Variables ***
${LANDING_LABEL} =     xpath=//*[@id="wrapper"]/nav/div[1]/a

*** Keywords ***
Navigate To
    go to   ${BACKOFFICE_URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_LABEL}
