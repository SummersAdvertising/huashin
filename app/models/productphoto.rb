class Productphoto < ActiveRecord::Base
  belongs_to :product
  attr_accessible :image, :name, :product_id
  mount_uploader :image, ImageUploader
  
  before_validation :update_filename
  validates_uniqueness_of :name, :allow_blank => true, :allow_nil => true, :on => :create
  
  private
  def update_filename
    if(image?)
      self.name = image.file.filename
    end
  end

end
