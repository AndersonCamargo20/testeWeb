class CreateRepresentanteHomologations < ActiveRecord::Migration[5.0]
  def change
    create_table :representante_homologations do |t|
      t.references :homologation, foreign_key: true
      t.references :representante_empresa, foreign_key: true

      t.timestamps
    end
  end
end
