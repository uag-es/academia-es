#Scenario: Cadastrar centro de treinamento com sucesso
Given("estou na pagina de novo centro de treinamento") do
  visit '/centro_de_treinamentos/new'
  expect(page).to have_content('New Centro De Treinamento')
end

When("preencho o campo Nome com {string}") do |nome|
  fill_in 'centro_de_treinamento[nome]', :with => nome
end

And("preencho campo CNPJ com {string}") do |cnpj|
  fill_in 'centro_de_treinamento[cnpj]', :with => cnpj
end

And("preencho o campo Responsavel com {string}") do |responsavel|
  fill_in 'centro_de_treinamento[responsavel]', :with => responsavel
end

And("salvo o centro de treinamento") do
  click_button 'submit'
end

Then("vejo que o centro de treinamento com nome {string} foi salvo com sucesso") do |nome|
  expect(page).to have_content(nome)
end

#Scenario: Cadastrar centro de treinamento com CNPJ vazio
Then("vejo uma mensagem de erro") do
  find_by_id('error_explanation')
end

#Scenario: Editar centro de treinamento com sucesso
Given("o centro de treinamento com Nome {string} CNPJ {string} e Responsavel {string} existe") do |nome, cnpj, responsavel|
  visit '/centro_de_treinamentos/new'
  expect(page).to have_current_path('/centro_de_treinamentos/new')
  fill_in 'centro_de_treinamento[nome]', :with => nome
  fill_in 'centro_de_treinamento[cnpj]', :with => cnpj
  fill_in 'centro_de_treinamento[responsavel]', :with => responsavel
  click_button 'submit'
  expect(page).to have_content(nome)
end

And("estou na pagina de centro de treinamentos") do
  visit '/centro_de_treinamentos'
  expect(page).to have_current_path('/centro_de_treinamentos')
end

When("abro a pagina de edicao do centro de treinamento com Nome {string}") do |nome|
  click_link "e-#{nome}"
end

Then("vejo que o centro de treinamento com Nome {string} foi editado com sucesso") do |nome|
  expect(page).to have_content(nome)
end

#Scenario: Ver centro de treinamento com sucesso
When("clico em exibir o centro de treinamento com Nome {string}") do |nome|
  click_link "s-#{nome}"
end

Then("vejo o centro de treinamento com Nome {string}") do |nome|
  expect(page).to have_content(nome)
end