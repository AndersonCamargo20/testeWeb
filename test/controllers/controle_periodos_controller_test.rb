require 'test_helper'

class ControlePeriodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controle_periodo = controle_periodos(:one)
  end

  test "should get index" do
    get controle_periodos_url
    assert_response :success
  end

  test "should get new" do
    get new_controle_periodo_url
    assert_response :success
  end

  test "should create controle_periodo" do
    assert_difference('ControlePeriodo.count') do
      post controle_periodos_url, params: { controle_periodo: { data: @controle_periodo.data, homologation_id: @controle_periodo.homologation_id, matutinoFinal: @controle_periodo.matutinoFinal, matutinoInicial: @controle_periodo.matutinoInicial, noturnoFinal: @controle_periodo.noturnoFinal, noturnoInicial: @controle_periodo.noturnoInicial, vespertinoFinal: @controle_periodo.vespertinoFinal, vespertinoInicial: @controle_periodo.vespertinoInicial } }
    end

    assert_redirected_to controle_periodo_url(ControlePeriodo.last)
  end

  test "should show controle_periodo" do
    get controle_periodo_url(@controle_periodo)
    assert_response :success
  end

  test "should get edit" do
    get edit_controle_periodo_url(@controle_periodo)
    assert_response :success
  end

  test "should update controle_periodo" do
    patch controle_periodo_url(@controle_periodo), params: { controle_periodo: { data: @controle_periodo.data, homologation_id: @controle_periodo.homologation_id, matutinoFinal: @controle_periodo.matutinoFinal, matutinoInicial: @controle_periodo.matutinoInicial, noturnoFinal: @controle_periodo.noturnoFinal, noturnoInicial: @controle_periodo.noturnoInicial, vespertinoFinal: @controle_periodo.vespertinoFinal, vespertinoInicial: @controle_periodo.vespertinoInicial } }
    assert_redirected_to controle_periodo_url(@controle_periodo)
  end

  test "should destroy controle_periodo" do
    assert_difference('ControlePeriodo.count', -1) do
      delete controle_periodo_url(@controle_periodo)
    end

    assert_redirected_to controle_periodos_url
  end
end
