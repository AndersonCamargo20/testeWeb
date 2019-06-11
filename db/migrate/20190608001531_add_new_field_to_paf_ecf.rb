class AddNewFieldToPafEcf < ActiveRecord::Migration[5.0]
  def change
    add_column :paf_ecfs, :tipo_funcionamento, :string
    add_column :paf_ecfs, :arquivo_sintegra, :string
  end
end
