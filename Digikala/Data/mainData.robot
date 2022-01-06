*** Settings ***
Documentation     login to digikala
Library     SeleniumLibrary
Resource    variables.robot
***variables***

*** Keywords ***
open page
    set Selenium Speed  0 second
    set Selenium Timeout  60 second
    open Browser    https://www.digikala.com    firefox
page num1
    Wait Until Element Is Visible  ${enterButton1} 
    click Element  ${enterButton1}
page num2
    Wait Until Element Is Visible  ${enterButton2} 
    input text  ${phoneNumber}   ${phone}
    click Element   ${enterButton2} 
page num3
    Wait Until Element Is Visible  ${enterButton3} 
    input text  ${passInput}  ${password}
    click Element  ${enterButton3}
page num4
    Wait Until Element Is Visible  ${enterButton1}
    click Element  ${enterButton1} 
    
login to digikala
    page num1
    page num2
    page num3
    page num4