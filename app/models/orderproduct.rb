class Orderproduct < ActiveRecord::Base
  attr_accessible :descript, :name, :price, :frontshow, :addDate, :image, :weight, :amountperbox, :type, :fruitType
  has_many :orderitems
  has_many :orders, :through => :orderitems

  has_many :orderproductphotos

  mount_uploader :image, ImageUploader
  
  paginates_per 5
end
