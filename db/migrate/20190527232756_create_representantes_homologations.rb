class CreateRepresentantesHomologations < ActiveRecord::Migration[5.0]
  def change
    create_table :representantes_homologations do |t|
      t.references :homologation, foreign_key: true
      t.references :representante_empresas, foreign_key: true

      t.timestamps
    end
  end
end
