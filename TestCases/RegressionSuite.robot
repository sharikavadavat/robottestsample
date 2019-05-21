*** Settings ***
Documentation  This is a simple test for Robot Framework
Library  Selenium2Library
Resource  ../resources/home.robot


*** Variables ***
${validKeyword}=    mobiles
${invalidKeyword}=  1351515616


*** Keywords ***

*** Test Cases ***

Valid Keyword Search
    [Documentation]  This test is to validate the search with valid keywords
    [Tags]  Valid-Search
    Open Browser    https://www.amazon.com  chrome
    Input Text    //input[@id='twotabsearchtextbox']    ${validkeyword}
    Click Element   //input[@class='nav-input' and @type='submit']
    Page Should Contain     results for "${validkeyword}"
    And Page Should Not Contain   No results for ${validkeyword}
    Page Should Contain Element     //span[@data-action='a-dropdown-button']
    Close Browser


Invalid Keyword Search
    [Documentation]  This test is to validate the search with invalid keywords
    [Tags]  Invalid-Search
    Open Browser    https://www.amazon.com  chrome
    Input Text    //input[@id='twotabsearchtextbox']    ${invalidKeyword}
    Click Element   //input[@class='nav-input' and @type='submit']
    Page Should Contain     No results for ${invalidKeyword}
    Close Browser


