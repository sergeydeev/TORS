*** Settings ***
Library         SeleniumLibrary
Suite Setup     Go to Google
Suite Teardown  Close all Brousers

*** Test Cases ***
Ensure the capital of a country is displeyed
    Search and check    Russia    Moskau
    Search and check    France    Paris
    Search and check    The Netherlands    Amsterdam



*** Keywords ***

Go to Google
    open browser  https://google.com    chrome

Search and check
    [Arguments]    ${query}    ${expected result}
    input text    class="gLFyf gsfi"    ${query}
    click button    id=Tg7LZd
    WAIT UNTIL PAGE CONTAINS    ${expected_result}