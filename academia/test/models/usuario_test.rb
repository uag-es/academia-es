require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test "nao deve salvar sem nome" do
    usuario = Usuario.new
    assert_not usuario.save
  end

  test "usuario deve ser excluido" do
    usuario = Usuario.new nome: "Marcos", cpf: "00011122233"
    assert usuario.save
    assert Usuario.exists?(usuario.cpf)
    usuario.destroy
    assert_not Usuario.exists?(usuario.cpf)
  end

end
