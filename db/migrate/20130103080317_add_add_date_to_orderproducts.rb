class AddAddDateToOrderproducts < ActiveRecord::Migration
  def change
  	add_column :orderproducts, :addDate, :date
  end
end
