class Question < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  attr_accessible :askerName, :content, :title, :email
  validates :askerName, :content, :presence => true
  paginates_per 5
end
