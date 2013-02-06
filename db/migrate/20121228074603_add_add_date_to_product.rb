class AddAddDateToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :addDate, :date
  end
end
