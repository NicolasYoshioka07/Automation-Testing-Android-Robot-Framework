***Settings***
Resource        ../resources/base.robot
Resource        ../resources/BDDpt-br.robot
Resource        ../pages/cadastro_usuario_pages.robot
Resource        ../steps/cadastro_usuario_steps.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${name}                   Nicolas Hian Gomes Yoshioka
${phone_number}           11970902156
${gmail}                  nicolasyoshioka@outlook.com
${password}               testrobotmobile

***Test Cases***
Cenário 01: Cadastrar um usuário
      [tags]      Cadastrar usuário
      Dado que esteja na página de cadastro de usuário
      Quando cadastrar um usuário
      Então a mensagem "Registration Sucessful" deve ser exibida na tela

***Keywords***
Que esteja na página de cadastro de usuário
      Abrir página de cadastro de usuário

Cadastrar um usuário
      Cadastrar usuário       ${name}    ${phone_number}    ${gmail}    ${password}

A mensagem "Registration Sucessful" deve ser exibida na tela
      Validar cadastro de usuário
