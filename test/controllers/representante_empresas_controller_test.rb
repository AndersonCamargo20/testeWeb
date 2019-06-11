require 'test_helper'

class RepresentanteEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representante_empresa = representante_empresas(:one)
  end

  test "should get index" do
    get representante_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_representante_empresa_url
    assert_response :success
  end

  test "should create representante_empresa" do
    assert_difference('RepresentanteEmpresa.count') do
      post representante_empresas_url, params: { representante_empresa: { compani_id: @representante_empresa.compani_id, funcao: @representante_empresa.funcao, nome: @representante_empresa.nome } }
    end

    assert_redirected_to representante_empresa_url(RepresentanteEmpresa.last)
  end

  test "should show representante_empresa" do
    get representante_empresa_url(@representante_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_representante_empresa_url(@representante_empresa)
    assert_response :success
  end

  test "should update representante_empresa" do
    patch representante_empresa_url(@representante_empresa), params: { representante_empresa: { compani_id: @representante_empresa.compani_id, funcao: @representante_empresa.funcao, nome: @representante_empresa.nome } }
    assert_redirected_to representante_empresa_url(@representante_empresa)
  end

  test "should destroy representante_empresa" do
    assert_difference('RepresentanteEmpresa.count', -1) do
      delete representante_empresa_url(@representante_empresa)
    end

    assert_redirected_to representante_empresas_url
  end
end
