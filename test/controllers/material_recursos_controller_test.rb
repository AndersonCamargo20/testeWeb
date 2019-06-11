require 'test_helper'

class MaterialRecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_recurso = material_recursos(:one)
  end

  test "should get index" do
    get material_recursos_url
    assert_response :success
  end

  test "should get new" do
    get new_material_recurso_url
    assert_response :success
  end

  test "should create material_recurso" do
    assert_difference('MaterialRecurso.count') do
      post material_recursos_url, params: { material_recurso: { marca: @material_recurso.marca, modelo: @material_recurso.modelo, nomeEquipamento: @material_recurso.nomeEquipamento, paf_ecf_id: @material_recurso.paf_ecf_id } }
    end

    assert_redirected_to material_recurso_url(MaterialRecurso.last)
  end

  test "should show material_recurso" do
    get material_recurso_url(@material_recurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_recurso_url(@material_recurso)
    assert_response :success
  end

  test "should update material_recurso" do
    patch material_recurso_url(@material_recurso), params: { material_recurso: { marca: @material_recurso.marca, modelo: @material_recurso.modelo, nomeEquipamento: @material_recurso.nomeEquipamento, paf_ecf_id: @material_recurso.paf_ecf_id } }
    assert_redirected_to material_recurso_url(@material_recurso)
  end

  test "should destroy material_recurso" do
    assert_difference('MaterialRecurso.count', -1) do
      delete material_recurso_url(@material_recurso)
    end

    assert_redirected_to material_recursos_url
  end
end
