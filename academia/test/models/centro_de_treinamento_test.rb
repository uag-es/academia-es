require 'test_helper'

class CentroDeTreinamentoTest < ActiveSupport::TestCase
  test "nao deve salvar sem cnpj" do
    centroTreinamento = CentroDeTreinamento.new nome: "Centro1", responsavel: "Marcos"
    assert_not centroTreinamento.save
  end

  test "centro de treinamento deve ser excluido" do
    centroTreinamento = CentroDeTreinamento.new nome: "Centro1", cnpj: "00011122233"
    assert centroTreinamento.save
    assert CentroDeTreinamento.exists?(centroTreinamento.cnpj)
    centroTreinamento.destroy
    assert_not CentroDeTreinamento.exists?(centroTreinamento.cpf)
  end

end
