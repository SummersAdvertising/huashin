class AddImageToOrderproduct < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :image, :string
  end
end
