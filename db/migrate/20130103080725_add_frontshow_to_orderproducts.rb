class AddFrontshowToOrderproducts < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :frontshow, :string
  end
end
