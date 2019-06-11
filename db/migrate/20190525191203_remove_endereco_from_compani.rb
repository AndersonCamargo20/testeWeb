class RemoveEnderecoFromCompani < ActiveRecord::Migration[5.0]
  def change
    remove_column :companis, :endereco, :string
    remove_column :companis, :references, :string
  end
end
