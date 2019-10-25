Feature: Centro de Treinamento
  As a administrador
  I want to criar, remover, ver e editar um centro de treinamento
  So that eu nao quero fazer isso manualmente


  Scenario: Cadastrar centro de treinamento com sucesso
    Given estou na pagina de novo centro de treinamento
    When preencho o campo Nome com "Bravus"
    And preencho campo CNPJ com "11.111.1111/8989-00"
    And preencho o campo Responsavel com "Jose"
    And salvo o centro de treinamento
    Then vejo que o centro de treinamento com nome "Bravus" foi salvo com sucesso

  Scenario: Cadastrar centro de treinamento com CNPJ vazio
    Given estou na pagina de novo centro de treinamento
    When preencho o campo Nome com "Bravus"
    And preencho campo CNPJ com ""
    And preencho o campo Responsavel com "Jose"
    And salvo o centro de treinamento
    Then vejo uma mensagem de erro

  Scenario: Cadastrar centro de treinamento com CNPJ duplicado
    Given o centro de treinamento com Nome "Bravus" CNPJ "11.111.1111./8888-00" e Responsavel "Jose" existe
    And estou na pagina de novo centro de treinamento
    When preencho o campo Nome com "Centro repetido"
    And preencho campo CNPJ com "11.111.1111./8888-00"
    And preencho o campo Responsavel com "Augusto"
    And salvo o centro de treinamento
    Then vejo uma mensagem de erro

  Scenario: Editar centro de treinamento com sucesso
    Given o centro de treinamento com Nome "Bravus" CNPJ "11.111.1111./8888-00" e Responsavel "Jose" existe
    And estou na pagina de centro de treinamentos
    When abro a pagina de edicao do centro de treinamento com Nome "Bravus"
    And preencho o campo Nome com "Novo Centro de treino"
    And salvo o centro de treinamento
    Then vejo que o centro de treinamento com Nome "Novo Centro de treino" foi editado com sucesso

  Scenario: Ver centro de treinamento com sucesso
    Given o centro de treinamento com Nome "Bravus" CNPJ "11.111.1111./8888-00" e Responsavel "Marcos" existe
    And estou na pagina de centro de treinamentos
    When clico em exibir o centro de treinamento com Nome "Bravus"
    Then vejo o centro de treinamento com Nome "Bravus"