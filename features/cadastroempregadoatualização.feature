#language:pt
#utf-8

Funcionalidade: cadastar e editar empregado "http://opensource.demo.orangehrmlive.com/"

Efetuar cadastro no site "http://opensource.demo.orangehrmlive.com/"

@cadastroorange
Cenário: Cadastrar empregado
Dado que esteja no site "http://opensource.demo.orangehrmlive.com/"
Quando eu realizar o logina
Então usuário e cadastrado profissional cadastrado com sucesso

@atualizaorange
Cenário: Atualizar empregado existente
Dado que esteja no site e acesse a lista de funcionários
Quando eu selecionar um funcionário existente 
Então cadastro de funcionário pode ser manipiulado  e editado