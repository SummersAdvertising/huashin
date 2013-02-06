class RenameTypeInOrderproducts < ActiveRecord::Migration
  def change
  	rename_column :orderproducts, :type, :fruitType
  end
end
