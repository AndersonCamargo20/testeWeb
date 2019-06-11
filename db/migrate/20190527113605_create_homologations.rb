class CreateHomologations < ActiveRecord::Migration[5.0]
  def change
    create_table :homologations do |t|
      t.string :titulo
      t.references :compani, foreign_key: true

      t.timestamps
    end
  end
end
