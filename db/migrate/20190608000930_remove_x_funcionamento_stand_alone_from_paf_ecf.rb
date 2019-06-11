class RemoveXFuncionamentoStandAloneFromPafEcf < ActiveRecord::Migration[5.0]
  def change
    remove_column :paf_ecfs, :x_funcionamento_stand_alone, :boolean
    remove_column :paf_ecfs, :x_funcionamento_rede, :boolean
    remove_column :paf_ecfs, :x_funcionamento_parametrizavel, :boolean
    
    remove_column :paf_ecfs, :x_sintegra_ped, :boolean
    remove_column :paf_ecfs, :x_sintegra_retaguarda, :boolean
    remove_column :paf_ecfs, :x_sintegra_paf, :boolean
  end
end
