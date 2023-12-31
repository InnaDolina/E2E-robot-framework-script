*** Settings ***
Library    SeleniumLibrary
Resource    ../Tests/Front_Office.robot

*** Variables ***


*** Keywords ***
Launch Web Test
    set selenium timeout    10s
    open browser    about:blank     ${BROWSER}
    maximize browser window

Close Web Test
    close all browsers