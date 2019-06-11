class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
