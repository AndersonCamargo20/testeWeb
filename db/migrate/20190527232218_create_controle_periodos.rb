class CreateControlePeriodos < ActiveRecord::Migration[5.0]
  def change
    create_table :controle_periodos do |t|
      t.datetime :data
      t.time :matutinoInicial
      t.time :matutinoFinal
      t.time :vespertinoInicial
      t.time :vespertinoFinal
      t.time :noturnoInicial
      t.time :noturnoFinal
      t.references :homologation, foreign_key: true

      t.timestamps
    end
  end
end
