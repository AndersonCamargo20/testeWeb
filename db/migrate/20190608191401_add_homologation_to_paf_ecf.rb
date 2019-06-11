class AddHomologationToPafEcf < ActiveRecord::Migration[5.0]
  def change
    add_reference :paf_ecfs, :homologation, foreign_key: true
  end
end
