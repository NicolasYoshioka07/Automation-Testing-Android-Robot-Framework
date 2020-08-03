***Settings***

Resource        ../pages/cadastro_usuario_pages.robot

***Keywords***
Cadastrar usuário
    [Arguments]         ${name}   ${phone_number}   ${gmail}   ${password}
    Inserir nome        ${name}
    Inserir telefone    ${phone_number}
    Inserir gmail       ${gmail}
    Inserir senha       ${password}
