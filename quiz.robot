*** Settings ***
Documentation  test robotFW
Library  SeleniumLibrary
Suite Setup  Open Browser    https://automationexercise.com/  chrome
 
 
 
*** Variables ***
${name}  natis
${email}  65022803@up.ac.th
${subject}  quiz
${message}  quiz
 
 
 
*** Keywords ***
 
Click on 'Contact Us' button
  Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[8]/a
 
 
Input name
    [Arguments]  ${name}
    Input Text  //*[@id="contact-us-form"]/div[1]/input  ${name}
 
Input email
    [Arguments]  ${email}
    Input Text  //*[@id="contact-us-form"]/div[2]/input  ${email}
 
Input subject
    [Arguments]  ${subject}
    Input Text  //*[@id="contact-us-form"]/div[3]/input  ${subject}
 
 
Input message
    [Arguments]  ${message}
    Input Text  //*[@id="message"]  ${message}
 
Click 'Submit' button
    Click Element  //*[@id="contact-us-form"]/div[6]/input
 
 
*** Test Cases ***
 
 
Verify that home page is visible successfully
  [Documentation]   this testcase is expected to show "GET IN TOUCH"
  Click on 'Contact Us' button
  Page Should Contain Element  //*[@id="contact-page"]/div[2]/div[1]/div/h2
  Input name  ${name}
  Input email  ${email}
  Input subject   ${subject}
  Input message  ${message}
  Choose File  //*[@id="contact-us-form"]/div[5]/input  file_path="C:\\Users\\anfield\\Pictures\\8977200545822.png"
  Click 'Submit' button
 
