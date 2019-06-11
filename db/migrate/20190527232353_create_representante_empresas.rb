class CreateRepresentanteEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :representante_empresas do |t|
      t.string :nome
      t.string :funcao
      t.references :compani, foreign_key: true

      t.timestamps
    end
  end
end
