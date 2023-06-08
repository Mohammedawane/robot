#suite de tests:
*** Settings ***
Library    SeleniumLibrary
Documentation    Ma premiere suite de test avec Robot frameWork
...    Ceci est un exemple de documentation
...    ************************************
Resource    ../Ressources/ressource1.robot
*** Test Cases ***
tc01 login_test
    se connecter au site Demo Orange
    Remplir le formulaire de login
    Fermer ke navigateur
tc01 logout_test
    se connecter au site Demo Orange
    Remplir le formulaire de login
    Se deconnecter
    Fermer ke navigateur
    
