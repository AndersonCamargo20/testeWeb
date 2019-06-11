class CreatePafEcfs < ActiveRecord::Migration[5.0]
  def change
    create_table :paf_ecfs do |t|
      t.string :nome_comercial
      t.string :idetificacao_versao
      t.string :identificacao_executavel_principal
      t.string :linguagem
      t.boolean :x_linux, default: false
      t.boolean :x_mac, default: false
      t.boolean :x_windows, default: false
      t.string :gerenciador_db
      t.string :tipo_desenvolvimento
      t.boolean :x_funcionamento_stand_alone, default: false
      t.boolean :x_funcionamento_rede, default: false
      t.boolean :x_funcionamento_parametrizavel, default: false
      t.boolean :x_sintegra_paf, default: false
      t.boolean :x_sintegra_retaguarda, default: false
      t.boolean :x_sintegra_ped, default: false
      t.string :integracao_paf
      t.boolean :x_imp_concomitante, default: false
      t.boolean :x_imp_nao_concomitante, default: false
      t.boolean :x_imp_prevenda, default: false
      t.boolean :x_imp_conta_cliente, default: false
      t.boolean :x_imp_dav_sem_impressao, default: false
      t.boolean :x_imp_dav_impressora_nao_fiscal, default: false
      t.boolean :x__imp_dav_impressora_fiscal, default: false
      t.string :tratamento_interrupcao

      t.timestamps
    end
  end
end
