#language: pt

Funcionalidade: Cadastro
    Como um usuário que deseja visualizar noticías de acordo com meus interesses
    Quero realizar meu cadastro no FlipBoard
    Para que eu possa acessar o site

    @cadastro-sucesso 
    Cenario: cadastro com sucesso
        Dado que eu acesso a tela de cadastro no site do flipboard
        Quando Preencho meu Email
        E preencho meu nome
        E preencho minha senha
        E aciono o botão de continuar
        Então devo ser redirecionado para a tela de seleção de preferências


    @cadastro-sem-sucesso
    Cenario: email ja cadastrado
        Dado que eu acesso a tela de cadastro no site do flipboard
        Quando submeto o seguinte formulario de cadastro:
            |Email          |FullName    |senha           |
            |teste@teste.com|Ronaldo Luiz|Senhaforte@123zy|
        E aciono o botão de continuar
        Então vejo a mensagem de alerta: "Another account is already associated with this email address"

    @cadastro-sem-sucesso
    Cenario: Senha fraca
    Dado que eu acesso a tela de cadastro no site do flipboard
    Quando submeto o seguinte formulario de cadastro:
            |Email       |FullName    |senha    |
            |Faker e-mail|Ronaldo Luiz|123456789|
    Então vejo a mensagem de alerta: "Password easy to guess. Strong passwords are at least 8 characters long, unique to you and difficult for others to guess."
    
