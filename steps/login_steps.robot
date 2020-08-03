***Settings***

Resource        ../pages/login_pages.robot

***Keywords***
Logar
    [Arguments]              ${gmail}   ${password}
    Inserir gmail login      ${gmail}
    Inserir senha login      ${password}
    Realizar login
