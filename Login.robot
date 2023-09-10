*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search Test
    [Documentation]    Perform a search on Google
    Open Browser    http://www.google.com    Chrome
    Choose Cancel On Next Confirmation   # Choose "Tetap Logout"
    Input Text    name=q    Robot Framework
    Press Keys    name=q    \\13   # Simulate pressing Enter key
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot
    Close Browser
