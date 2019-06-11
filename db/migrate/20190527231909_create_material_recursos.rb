class CreateMaterialRecursos < ActiveRecord::Migration[5.0]
  def change
    create_table :material_recursos do |t|
      t.string :nomeEquipamento
      t.string :marca
      t.string :modelo
      t.references :paf_ecf, foreign_key: true

      t.timestamps
    end
  end
end
