require "application_system_test_case"

class LlamadasTest < ApplicationSystemTestCase
  setup do
    @llamada = llamadas(:one)
  end

  test "visiting the index" do
    visit llamadas_url
    assert_selector "h1", text: "Llamadas"
  end

  test "should create llamada" do
    visit llamadas_url
    click_on "New llamada"

    fill_in "Cliente", with: @llamada.cliente_id
    fill_in "Fecha", with: @llamada.fecha
    fill_in "Motivo", with: @llamada.motivo
    click_on "Create Llamada"

    assert_text "Llamada was successfully created"
    click_on "Back"
  end

  test "should update Llamada" do
    visit llamada_url(@llamada)
    click_on "Edit this llamada", match: :first

    fill_in "Cliente", with: @llamada.cliente_id
    fill_in "Fecha", with: @llamada.fecha
    fill_in "Motivo", with: @llamada.motivo
    click_on "Update Llamada"

    assert_text "Llamada was successfully updated"
    click_on "Back"
  end

  test "should destroy Llamada" do
    visit llamada_url(@llamada)
    click_on "Destroy this llamada", match: :first

    assert_text "Llamada was successfully destroyed"
  end
end
