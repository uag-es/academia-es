require 'test_helper'

class CentroDeTreinamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centro_de_treinamento = centro_de_treinamentos(:one)
  end

  test "should get index" do
    get centro_de_treinamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_centro_de_treinamento_url
    assert_response :success
  end

  test "should create centro_de_treinamento" do
    assert_difference('CentroDeTreinamento.count') do
      post centro_de_treinamentos_url, params: { centro_de_treinamento: { cnpj: @centro_de_treinamento.cnpj, nome: @centro_de_treinamento.nome, responsavel: @centro_de_treinamento.responsavel } }
    end

    assert_redirected_to centro_de_treinamento_url(CentroDeTreinamento.last)
  end

  test "should show centro_de_treinamento" do
    get centro_de_treinamento_url(@centro_de_treinamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_centro_de_treinamento_url(@centro_de_treinamento)
    assert_response :success
  end

  test "should update centro_de_treinamento" do
    patch centro_de_treinamento_url(@centro_de_treinamento), params: { centro_de_treinamento: { cnpj: @centro_de_treinamento.cnpj, nome: @centro_de_treinamento.nome, responsavel: @centro_de_treinamento.responsavel } }
    assert_redirected_to centro_de_treinamento_url(@centro_de_treinamento)
  end

  test "should destroy centro_de_treinamento" do
    assert_difference('CentroDeTreinamento.count', -1) do
      delete centro_de_treinamento_url(@centro_de_treinamento)
    end

    assert_redirected_to centro_de_treinamentos_url
  end
end
