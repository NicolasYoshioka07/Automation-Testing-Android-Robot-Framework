***Variables***
${BTN_START_REGISTER}     id=com.example.vamsi.login:id/tvRegister
${IPT_NAME}               id=com.example.vamsi.login:id/etRegName
${IPT_PHONE_NUMBER}       id=com.example.vamsi.login:id/etRegPhone
${IPT_GMAIL}              id=com.example.vamsi.login:id/etRegGmail
${IPT_PASSWORD}           id=com.example.vamsi.login:id/etRegPassword
${IPT_FINISH_REGISTER}    id=com.example.vamsi.login:id/btnRegLogin
${BTN_GO_TO_LOGIN}        id=com.example.vamsi.login:id/btnGotoLogin

***Keywords***
Abrir página de cadastro de usuário
    Wait Until Element Is Visible     ${BTN_START_REGISTER}
    Click Element                     ${BTN_START_REGISTER}

Inserir nome
    [Arguments]     ${name}
    Wait Until Element Is Visible     ${IPT_NAME}
    Input Text                        ${IPT_NAME}   ${name}

Inserir telefone
    [Arguments]     ${phone_number}
    Wait Until Element Is Visible     ${IPT_PHONE_NUMBER}
    Input Text                        ${IPT_PHONE_NUMBER}   ${phone_number}

Inserir gmail
    [Arguments]     ${gmail}
    Wait Until Element Is Visible     ${IPT_GMAIL}
    Input Text                        ${IPT_GMAIL}   ${gmail}

Inserir senha
    [Arguments]     ${password}
    Wait Until Element Is Visible     ${IPT_PASSWORD}
    Input Text                        ${IPT_PASSWORD}   ${password}

Validar cadastro de usuário
    Wait Until Element Is Visible     ${IPT_FINISH_REGISTER}
    Click Element                     ${IPT_FINISH_REGISTER}
    Wait Until Page Contains          Registration Successful
    Wait Until Element Is Visible     ${BTN_GO_TO_LOGIN}
    Click Element                     ${BTN_GO_TO_LOGIN}
