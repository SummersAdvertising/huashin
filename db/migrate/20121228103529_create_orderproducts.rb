class CreateOrderproducts < ActiveRecord::Migration
  def change
    create_table :orderproducts do |t|
      t.string :name
      t.integer :price
      t.text :descript

      t.timestamps
    end
  end
end
