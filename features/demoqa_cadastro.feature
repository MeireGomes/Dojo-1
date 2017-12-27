
#language:pt
#utf-8

Funcionalidade: cadastar usuário no  "http://demoqa.com/"

Efetuar cadastro no site "http://demoqa.com/"

@demoqa
Cenário: Cadastrar usuário 
Dado que esteja no site "http://demoqa.com/"
Quando eu realizar o cadastro
Então usuário e cadastrado com sucesso