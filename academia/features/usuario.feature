Feature: Usuario
  As a usuario
  I want criar, remover, ver e editar um usuario
  so that eu nao quero fazer isso manualmente


  Scenario: Cadastrar usuario com sucesso
    Given Estou na pagina de novo usuario
    When Preencho o campo Nome com "Adilson"
    And Preencho o campo Email com "Adilson@email.com"
    And Preencho o campo CPF com "11111111188"
    And Eu salvo o usuario
    Then Eu vejo que o usuario com nome "Adilson" foi salvo com sucesso

  Scenario: Editar usuario com sucesso
    Given O usuario com Nome "Adilson" Email "Adilson@email.com" e CPF "11111111188" existe
    And Estou na pagina de usuarios
    When Abro a pagina de edicao do ususario o Nome "Adilson"
    And Preencho o campo Nome com "Adilson Junior"
    And Eu salvo o usuario
    Then Eu vejo que o usuario com nome "Adilson Junior" foi editado com sucesso

  Scenario: Cadastrar usuario com nome em vazio
    Given Estou na pagina de novo usuario
    When Preencho o campo Nome com ""
    And Preencho o campo Email com "Junior@email.com"
    And Preencho o campo CPF com "12312312233"
    And Eu salvo o usuario
    Then Eu vejo uma mensagem de erro

  Scenario: Cadastrar usuario com CPF Insuficiente
    Given Estou na pagina de novo usuario
    When Preencho o campo Nome com "Adilson"
    And Preencho o campo Email com "Junior@email.com"
    And Preencho o campo CPF com "123123122"
    And Eu salvo o usuario
    Then Eu vejo uma mensagem de erro

  Scenario: Criar usuario com CPF duplicado
    Given O usuario com Nome "Adilson" Email "Adilson@email.com" e CPF "11111111188" existe
    And Estou na pagina de novo usuario
    When Preencho o campo Nome com "Marcos"
    And Preencho o campo Email com "marcos@email.com"
    And Preencho o campo CPF com "11111111188"
    And Eu salvo o usuario
    Then Eu vejo uma mensagem de erro