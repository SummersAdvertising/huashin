class AddShippingfeeToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :shippingfee, :string
  end
end
