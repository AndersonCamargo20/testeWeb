require 'test_helper'

class RepresentantesHomologationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representantes_homologation = representantes_homologations(:one)
  end

  test "should get index" do
    get representantes_homologations_url
    assert_response :success
  end

  test "should get new" do
    get new_representantes_homologation_url
    assert_response :success
  end

  test "should create representantes_homologation" do
    assert_difference('RepresentantesHomologation.count') do
      post representantes_homologations_url, params: { representantes_homologation: { homologation_id: @representantes_homologation.homologation_id, representanteEmpresa_id: @representantes_homologation.representanteEmpresa_id } }
    end

    assert_redirected_to representantes_homologation_url(RepresentantesHomologation.last)
  end

  test "should show representantes_homologation" do
    get representantes_homologation_url(@representantes_homologation)
    assert_response :success
  end

  test "should get edit" do
    get edit_representantes_homologation_url(@representantes_homologation)
    assert_response :success
  end

  test "should update representantes_homologation" do
    patch representantes_homologation_url(@representantes_homologation), params: { representantes_homologation: { homologation_id: @representantes_homologation.homologation_id, representanteEmpresa_id: @representantes_homologation.representanteEmpresa_id } }
    assert_redirected_to representantes_homologation_url(@representantes_homologation)
  end

  test "should destroy representantes_homologation" do
    assert_difference('RepresentantesHomologation.count', -1) do
      delete representantes_homologation_url(@representantes_homologation)
    end

    assert_redirected_to representantes_homologations_url
  end
end
