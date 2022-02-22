*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://www.google.co.in/  Chrome
    Press Keys   xpath://input[@name='q']    Python ha ha ha+ENTER
    ${AllLinksCount}=  get element count  xpath://h3
    log to console   ${AllLinksCount}

    @{LinkItems}     create list
    FOR     ${i}  IN RANGE   1  ${AllLinksCount}+1
    ${linkText}=  get text  xpath:(//h3)[${i}]
    log to console   ${linkText}
    END
*** Keywords ***
