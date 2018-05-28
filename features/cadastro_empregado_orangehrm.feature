#language: pt
#utf-8

Funcionalidade: Cadastrar Empregado
Eu como usuário do site OrangeHRM
Quero realizar o cadastro de um novo funcionario
Para poder gerencia-lo

@inclusao
Cenário: Cadastrar novo empregado
Dado que eu esteja logado no site OrangeHRM para incluir empregado
Quando inserir dados do empregado
Então as informações do empregado serão cadastradas

@alteracao
Cenário: Alterar empregado
Dado que eu esteja logado no site OrangeHRM pra alterar empregado
Quando localizar os dados do empregado e alterar suas informações
Então as informações do empregado serão alteradas

