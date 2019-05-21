*** Settings ***
Documentation  This is a simple test for Robot Framework
Library  Selenium2Library

*** Variables ***



*** Keywords ***

verify abcd
    wait till page loaded
    verify a text or element in the page