class Order < ActiveRecord::Base
  attr_accessible :address, :customername, :email, :tel, :phone, :totalprice, :shippingfee
  validates :address, :customername, :email, :totalprice, :presence => true
  
  has_many :orderitems, :dependent => :destroy
  has_many :orderproducts, :through => :orderitems

  paginates_per 5
end
