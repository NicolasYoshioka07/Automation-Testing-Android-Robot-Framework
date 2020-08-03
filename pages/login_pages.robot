***Variables***
${IPT_LOG_GMAIL}          id=com.example.vamsi.login:id/etLogGmail
${IPT_LOG_PASSWORD}       id=com.example.vamsi.login:id/etLoginPassword
${BTN_LOGIN}              id=com.example.vamsi.login:id/btnLogin

***Keywords***
Inserir gmail login
    [Arguments]     ${gmail}
    Wait Until Element Is Visible     ${IPT_LOG_GMAIL}
    Input Text                        ${IPT_LOG_GMAIL}    ${gmail}

Inserir senha login
    [Arguments]     ${password}
    Wait Until Element Is Visible     ${IPT_LOG_PASSWORD}
    Input Text                        ${IPT_LOG_PASSWORD}   ${password}

Realizar login
    Wait Until Element Is Visible     ${BTN_LOGIN}
    Click Element                     ${BTN_LOGIN}

Validar login
    Wait Until Page Contains          You are now logged in
    Wait Until Page Contains          Login sucess

Validar login inválido
    [Arguments]                       ${error_message}
    Wait Until Page Contains          ${error_message}
