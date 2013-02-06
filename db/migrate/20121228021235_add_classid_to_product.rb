class AddClassidToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :productclass_id, :interger
  end
end
