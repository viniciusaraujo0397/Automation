*** Settings ***
Library         SeleniumLibrary

***Variables***
${url}              https://teleconsulta.stg.iron.fit/login 

*** Keywords ***
New Section
    Open Browser                ${url}       chrome   
Close Section 
    Capture Page Screenshot
    Close Browser    