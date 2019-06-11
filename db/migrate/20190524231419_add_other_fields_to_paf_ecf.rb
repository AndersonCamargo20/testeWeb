class AddOtherFieldsToPafEcf < ActiveRecord::Migration[5.0]
  def change
    add_column :paf_ecfs, :nome_executavel_retaguarda, :string
    add_column :paf_ecfs, :nome_outros_executaceis, :string
  end
end
