class Orderitem < ActiveRecord::Base
  attr_accessible :amount, :order_id, :orderproduct_id

  belongs_to :order
  belongs_to :orderproduct
end
