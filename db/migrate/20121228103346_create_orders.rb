class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :totalprice
      t.string :customername
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
