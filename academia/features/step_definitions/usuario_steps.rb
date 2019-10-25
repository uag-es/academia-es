#Cenario: Cadastrar usuario com sucesso
Given("Estou na pagina de novo usuario") do
  visit '/usuarios/new'
  expect(page).to have_content('New Usuario')
end

When("Preencho o campo Nome com {string}") do |nome|
  fill_in 'usuario[nome]', :with => nome
end

And("Preencho o campo Email com {string}") do |email|
  fill_in 'usuario[email]', :with => email
end

And("Preencho o campo CPF com {string}") do |cpf|
  fill_in 'usuario[cpf]', :with => cpf
end

And("Eu salvo o usuario") do
  click_button 'submit'
end

Then("Eu vejo que o usuario com nome {string} foi salvo com sucesso") do |nome|
  expect(page).to have_content(nome)
end


#Cenario: Editar usuario com sucesso
Given("O usuario com Nome {string} Email {string} e CPF {string} existe") do |nome, email, cpf|
  visit 'usuarios/new'
  expect(page).to have_current_path('/usuarios/new')
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[email]', :with => email
  fill_in 'usuario[cpf]', :with => cpf
  click_button 'submit'
  expect(page).to have_content(nome)
end

And("Estou na pagina de usuarios") do
  visit '/usuarios'
  expect(page).to have_current_path('/usuarios')
end

When("Abro a pagina de edicao do ususario o Nome {string}") do |nome|
  click_link "e-#{nome}"
end

Then("Eu vejo que o usuario com nome {string} foi editado com sucesso") do |nome|
  expect(page).to have_content(nome)
end

#Cenario: Cadastrar usuario com nome em vazio
Then("Eu vejo uma mensagem de erro") do
  find_by_id('error_explanation')
end
