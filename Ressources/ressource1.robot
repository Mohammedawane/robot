*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${browser}=    chrome
${username}=    Admin
${password}=    admin123
*** Keywords ***
se connecter au site Demo Orange
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5
Remplir le formulaire de login
    Clear Element Text    name:username 
    Input Text    name:username    ${username}
    Clear Element Text    name:password 
    Input Text    name:password    ${password}
    Click Button    xpath://button[@type='submit']
Valider l'affichage de la page d'accueil
   
    Sleep    2
Se deconnecter
    Sleep    2
    Click Image    xpath://img[@class='oxd-userdropdown-img']
    Sleep    2
    Click Link    link:Logout
 Fermer ke navigateur
     sleep    2
     close browser 