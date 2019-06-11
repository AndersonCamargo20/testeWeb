class AddPerfilToPafEcf < ActiveRecord::Migration[5.0]
  def change
    add_column :paf_ecfs, :x_perfil_t, :boolean, default: false
    add_column :paf_ecfs, :x_perfil_v, :boolean, default: false
    add_column :paf_ecfs, :x_perfil_w, :boolean, default: false
  end
end
