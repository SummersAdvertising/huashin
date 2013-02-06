class AddAmountWeightToOrderproduct < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :weight, :string
  	add_column :orderproducts, :amountperbox, :string
  end
end
