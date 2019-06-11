class AddFieldsToPafEcf < ActiveRecord::Migration[5.0]
  def change
    add_column :paf_ecfs, :x_apl_pedagio, :boolean, default: false
    add_column :paf_ecfs, :x_apl_passageiros, :boolean, default: false
    add_column :paf_ecfs, :x_apl_farmacia, :boolean, default: false
    add_column :paf_ecfs, :x_apl_oficina_dav, :boolean, default: false
    add_column :paf_ecfs, :x_apl_oficina_cliente, :boolean, default: false
    add_column :paf_ecfs, :x_apl_bar_com_balanca, :boolean, default: false
    add_column :paf_ecfs, :x_apl_bar_sem_balanca, :boolean, default: false
    add_column :paf_ecfs, :x_apl_bar_interligado, :boolean, default: false
    add_column :paf_ecfs, :x_apl_bar_nao_interligado, :boolean, default: false
    add_column :paf_ecfs, :x_apl_posto_com_bomba, :boolean, default: false
    add_column :paf_ecfs, :x_apl_posto_sem_bomba, :boolean, default: false
    add_column :paf_ecfs, :x_apl_estacionamento, :boolean, default: false
    add_column :paf_ecfs, :x_apl_cinema, :boolean, default: false
  end
end
