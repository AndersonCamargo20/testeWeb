require 'test_helper'

class CompanisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compani = companis(:one)
  end

  test "should get index" do
    get companis_url
    assert_response :success
  end

  test "should get new" do
    get new_compani_url
    assert_response :success
  end

  test "should create compani" do
    assert_difference('Compani.count') do
      post companis_url, params: { compani: { cnpj: @compani.cnpj, endereco: @compani.endereco, ie: @compani.ie, im: @compani.im, nomeFantasia: @compani.nomeFantasia, razaoSocial: @compani.razaoSocial, references: @compani.references } }
    end

    assert_redirected_to compani_url(Compani.last)
  end

  test "should show compani" do
    get compani_url(@compani)
    assert_response :success
  end

  test "should get edit" do
    get edit_compani_url(@compani)
    assert_response :success
  end

  test "should update compani" do
    patch compani_url(@compani), params: { compani: { cnpj: @compani.cnpj, endereco: @compani.endereco, ie: @compani.ie, im: @compani.im, nomeFantasia: @compani.nomeFantasia, razaoSocial: @compani.razaoSocial, references: @compani.references } }
    assert_redirected_to compani_url(@compani)
  end

  test "should destroy compani" do
    assert_difference('Compani.count', -1) do
      delete compani_url(@compani)
    end

    assert_redirected_to companis_url
  end
end
