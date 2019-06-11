require 'test_helper'

class PafEcfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paf_ecf = paf_ecfs(:one)
  end

  test "should get index" do
    get paf_ecfs_url
    assert_response :success
  end

  test "should get new" do
    get new_paf_ecf_url
    assert_response :success
  end

  test "should create paf_ecf" do
    assert_difference('PafEcf.count') do
      post paf_ecfs_url, params: { paf_ecf: { gerenciador_db: @paf_ecf.gerenciador_db, identificacao_executavel_principal: @paf_ecf.identificacao_executavel_principal, idetificacao_versao: @paf_ecf.idetificacao_versao, integracao_paf: @paf_ecf.integracao_paf, linguagem: @paf_ecf.linguagem, nome_comercial: @paf_ecf.nome_comercial, tipo_desenvolvimento: @paf_ecf.tipo_desenvolvimento, tratamento_interrupcao: @paf_ecf.tratamento_interrupcao, x__imp_dav_impressora_fiscal: @paf_ecf.x__imp_dav_impressora_fiscal, x_funcionamento_parametrizavel: @paf_ecf.x_funcionamento_parametrizavel, x_funcionamento_rede: @paf_ecf.x_funcionamento_rede, x_funcionamento_stand_alone: @paf_ecf.x_funcionamento_stand_alone, x_imp_concomitante: @paf_ecf.x_imp_concomitante, x_imp_conta_cliente: @paf_ecf.x_imp_conta_cliente, x_imp_dav_impressora_nao_fiscal: @paf_ecf.x_imp_dav_impressora_nao_fiscal, x_imp_dav_sem_impressao: @paf_ecf.x_imp_dav_sem_impressao, x_imp_nao_concomitante: @paf_ecf.x_imp_nao_concomitante, x_imp_prevenda: @paf_ecf.x_imp_prevenda, x_linux: @paf_ecf.x_linux, x_mac: @paf_ecf.x_mac, x_sintegra_paf: @paf_ecf.x_sintegra_paf, x_sintegra_ped: @paf_ecf.x_sintegra_ped, x_sintegra_retaguarda: @paf_ecf.x_sintegra_retaguarda, x_windows: @paf_ecf.x_windows } }
    end

    assert_redirected_to paf_ecf_url(PafEcf.last)
  end

  test "should show paf_ecf" do
    get paf_ecf_url(@paf_ecf)
    assert_response :success
  end

  test "should get edit" do
    get edit_paf_ecf_url(@paf_ecf)
    assert_response :success
  end

  test "should update paf_ecf" do
    patch paf_ecf_url(@paf_ecf), params: { paf_ecf: { gerenciador_db: @paf_ecf.gerenciador_db, identificacao_executavel_principal: @paf_ecf.identificacao_executavel_principal, idetificacao_versao: @paf_ecf.idetificacao_versao, integracao_paf: @paf_ecf.integracao_paf, linguagem: @paf_ecf.linguagem, nome_comercial: @paf_ecf.nome_comercial, tipo_desenvolvimento: @paf_ecf.tipo_desenvolvimento, tratamento_interrupcao: @paf_ecf.tratamento_interrupcao, x__imp_dav_impressora_fiscal: @paf_ecf.x__imp_dav_impressora_fiscal, x_funcionamento_parametrizavel: @paf_ecf.x_funcionamento_parametrizavel, x_funcionamento_rede: @paf_ecf.x_funcionamento_rede, x_funcionamento_stand_alone: @paf_ecf.x_funcionamento_stand_alone, x_imp_concomitante: @paf_ecf.x_imp_concomitante, x_imp_conta_cliente: @paf_ecf.x_imp_conta_cliente, x_imp_dav_impressora_nao_fiscal: @paf_ecf.x_imp_dav_impressora_nao_fiscal, x_imp_dav_sem_impressao: @paf_ecf.x_imp_dav_sem_impressao, x_imp_nao_concomitante: @paf_ecf.x_imp_nao_concomitante, x_imp_prevenda: @paf_ecf.x_imp_prevenda, x_linux: @paf_ecf.x_linux, x_mac: @paf_ecf.x_mac, x_sintegra_paf: @paf_ecf.x_sintegra_paf, x_sintegra_ped: @paf_ecf.x_sintegra_ped, x_sintegra_retaguarda: @paf_ecf.x_sintegra_retaguarda, x_windows: @paf_ecf.x_windows } }
    assert_redirected_to paf_ecf_url(@paf_ecf)
  end

  test "should destroy paf_ecf" do
    assert_difference('PafEcf.count', -1) do
      delete paf_ecf_url(@paf_ecf)
    end

    assert_redirected_to paf_ecfs_url
  end
end
