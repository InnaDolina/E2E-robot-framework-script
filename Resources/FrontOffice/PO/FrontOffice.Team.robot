*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =    css=#team .section-heading

*** Keywords ***
Verify Page Loaded
    wait until page contains element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =   get text    ${TEAM_HEADER_LABEL}
    should be equal as strings    ${ElementText}    Our Amazing Team    ignore_case=true


