class AddAdmindeleteToOrderproducts < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :admindelete, :boolean
  end
end
