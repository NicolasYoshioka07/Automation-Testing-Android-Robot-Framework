***Settings***
Resource        ../resources/base.robot
Resource        ../resources/BDDpt-br.robot
Resource        ../pages/login_pages.robot
Resource        ../steps/login_steps.robot
Resource        ../pages/cadastro_usuario_pages.robot
Resource        ../steps/cadastro_usuario_steps.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${name}                   Nicolas Hian Gomes Yoshioka
${phone_number}           11970902156
${gmail}                  nicolasyoshioka@outlook.com
${password}               testrobotmobile
${invalid_gmail}          invalid_gmail
${invalid_password}       invalid_password
${empty_password}         ${EMPTY}
${empty_gmail}            ${EMPTY}


***Test Cases***
Cenário 01: Login válido
      [tags]      Login válido
      Dado que cadastro um novo usuário
      Quando realizar o login
      Então validar que o login foi um sucesso

Cenário 02: Login inválido
      [tags]      Login inválido
      [Template]        Cenário: Login com dados inválidos
      ${invalid_gmail}         ${invalid_password}    Login error
      ${invalid_gmail}         ${empty_password}      Enter your Email and Password to login
      ${empty_gmail}           ${invalid_password}    Enter your Email and Password to login
      ${empty_gmail}           ${empty_password}      Enter your Email and Password to login

***Keywords***
Que cadastro um novo usuário
      Abrir página de cadastro de usuário
      Cadastrar usuário                         ${name}    ${phone_number}    ${gmail}    ${password}
      Validar cadastro de usuário

Realizar o login
      Logar                                     ${gmail}    ${password}

Validar que o login foi um sucesso
      Validar login

Cenário: Login com dados inválidos
      [Arguments]                               ${gmail}    ${password}    ${error_message}
      Logar                                     ${gmail}    ${password}
      Validar login inválido                    ${error_message}
