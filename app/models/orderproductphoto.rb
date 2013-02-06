class Orderproductphoto < ActiveRecord::Base
  attr_accessible :image
  belongs_to :orderproduct
end
