class CreateCompanis < ActiveRecord::Migration[5.0]
  def change
    create_table :companis do |t|
      t.string :razaoSocial
      t.string :nomeFantasia
      t.string :cnpj
      t.string :ie
      t.string :im
      t.string :references
      t.string :endereco

      t.timestamps
    end
  end
end
