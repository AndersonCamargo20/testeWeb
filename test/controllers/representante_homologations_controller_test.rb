require 'test_helper'

class RepresentanteHomologationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representante_homologation = representante_homologations(:one)
  end

  test "should get index" do
    get representante_homologations_url
    assert_response :success
  end

  test "should get new" do
    get new_representante_homologation_url
    assert_response :success
  end

  test "should create representante_homologation" do
    assert_difference('RepresentanteHomologation.count') do
      post representante_homologations_url, params: { representante_homologation: { homologation_id: @representante_homologation.homologation_id, representante_empresa_id: @representante_homologation.representante_empresa_id } }
    end

    assert_redirected_to representante_homologation_url(RepresentanteHomologation.last)
  end

  test "should show representante_homologation" do
    get representante_homologation_url(@representante_homologation)
    assert_response :success
  end

  test "should get edit" do
    get edit_representante_homologation_url(@representante_homologation)
    assert_response :success
  end

  test "should update representante_homologation" do
    patch representante_homologation_url(@representante_homologation), params: { representante_homologation: { homologation_id: @representante_homologation.homologation_id, representante_empresa_id: @representante_homologation.representante_empresa_id } }
    assert_redirected_to representante_homologation_url(@representante_homologation)
  end

  test "should destroy representante_homologation" do
    assert_difference('RepresentanteHomologation.count', -1) do
      delete representante_homologation_url(@representante_homologation)
    end

    assert_redirected_to representante_homologations_url
  end
end
