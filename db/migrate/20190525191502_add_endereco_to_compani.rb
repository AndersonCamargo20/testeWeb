class AddEnderecoToCompani < ActiveRecord::Migration[5.0]
  def change
    add_reference :companis, :endereco, foreign_key: true
  end
end
