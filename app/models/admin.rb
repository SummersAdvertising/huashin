class Admin < ActiveRecord::Base
  attr_accessible :password, :username, :name
  validates :password, :username, :presence => true
  validates :username, :uniqueness => true

end
