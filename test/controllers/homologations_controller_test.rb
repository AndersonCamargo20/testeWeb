require 'test_helper'

class HomologationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homologation = homologations(:one)
  end

  test "should get index" do
    get homologations_url
    assert_response :success
  end

  test "should get new" do
    get new_homologation_url
    assert_response :success
  end

  test "should create homologation" do
    assert_difference('Homologation.count') do
      post homologations_url, params: { homologation: { compani_id: @homologation.compani_id, titulo: @homologation.titulo } }
    end

    assert_redirected_to homologation_url(Homologation.last)
  end

  test "should show homologation" do
    get homologation_url(@homologation)
    assert_response :success
  end

  test "should get edit" do
    get edit_homologation_url(@homologation)
    assert_response :success
  end

  test "should update homologation" do
    patch homologation_url(@homologation), params: { homologation: { compani_id: @homologation.compani_id, titulo: @homologation.titulo } }
    assert_redirected_to homologation_url(@homologation)
  end

  test "should destroy homologation" do
    assert_difference('Homologation.count', -1) do
      delete homologation_url(@homologation)
    end

    assert_redirected_to homologations_url
  end
end
