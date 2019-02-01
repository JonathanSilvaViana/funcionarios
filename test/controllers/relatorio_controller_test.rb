require 'test_helper'

class RelatorioControllerTest < ActionDispatch::IntegrationTest
  test "should get busca" do
    get relatorio_busca_url
    assert_response :success
  end

end
