require 'test_helper'

class ResponsabilidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsabilidade = responsabilidades(:one)
  end

  test "should get index" do
    get responsabilidades_url
    assert_response :success
  end

  test "should get new" do
    get new_responsabilidade_url
    assert_response :success
  end

  test "should create responsabilidade" do
    assert_difference('Responsabilidade.count') do
      post responsabilidades_url, params: { responsabilidade: { funcionarios_id: @responsabilidade.funcionarios_id, nome: @responsabilidade.nome, observacoes: @responsabilidade.observacoes } }
    end

    assert_redirected_to responsabilidade_url(Responsabilidade.last)
  end

  test "should show responsabilidade" do
    get responsabilidade_url(@responsabilidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsabilidade_url(@responsabilidade)
    assert_response :success
  end

  test "should update responsabilidade" do
    patch responsabilidade_url(@responsabilidade), params: { responsabilidade: { funcionarios_id: @responsabilidade.funcionarios_id, nome: @responsabilidade.nome, observacoes: @responsabilidade.observacoes } }
    assert_redirected_to responsabilidade_url(@responsabilidade)
  end

  test "should destroy responsabilidade" do
    assert_difference('Responsabilidade.count', -1) do
      delete responsabilidade_url(@responsabilidade)
    end

    assert_redirected_to responsabilidades_url
  end
end
