require "application_system_test_case"

class ResponsabilidadesTest < ApplicationSystemTestCase
  setup do
    @responsabilidade = responsabilidades(:one)
  end

  test "visiting the index" do
    visit responsabilidades_url
    assert_selector "h1", text: "Responsabilidades"
  end

  test "creating a Responsabilidade" do
    visit responsabilidades_url
    click_on "New Responsabilidade"

    fill_in "Funcionarios", with: @responsabilidade.funcionarios_id
    fill_in "Nome", with: @responsabilidade.nome
    fill_in "Observacoes", with: @responsabilidade.observacoes
    click_on "Create Responsabilidade"

    assert_text "Responsabilidade was successfully created"
    click_on "Back"
  end

  test "updating a Responsabilidade" do
    visit responsabilidades_url
    click_on "Edit", match: :first

    fill_in "Funcionarios", with: @responsabilidade.funcionarios_id
    fill_in "Nome", with: @responsabilidade.nome
    fill_in "Observacoes", with: @responsabilidade.observacoes
    click_on "Update Responsabilidade"

    assert_text "Responsabilidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsabilidade" do
    visit responsabilidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsabilidade was successfully destroyed"
  end
end
