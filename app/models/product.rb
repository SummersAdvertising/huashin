class Product < ActiveRecord::Base
  belongs_to :productclass
  has_many :productphotos, :dependent => :destroy

  attr_accessible :descript, :frontshow, :image, :name, :addDate
  
  mount_uploader :image, ImageUploader
  
  #delete the blank diretory built by carrierwave
  before_destroy :remember_id
  after_destroy :remove_id_directory

  paginates_per 5

  protected
  def remember_id
    @id = id
  end

  def remove_id_directory
    #product cover pic
    FileUtils.remove_dir("#{Rails.root}/public/uploads/Product/#{@id}", :force => true)
    #product description pics
    FileUtils.remove_dir("#{Rails.root}/public/uploads/Productphoto/#{@id}", :force => true)
  end

end
