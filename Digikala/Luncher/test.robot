*** Settings ***
Documentation  testcase login to digikala
Library    SeleniumLibrary
Resource   ../Data/mainData.robot
Suite Setup   open page

*** Test Cases ***
login
    login to digikala
   
