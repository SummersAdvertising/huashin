class AddTypeToOrderproducts < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :type, :string
  end
end
