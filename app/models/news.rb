class News < ActiveRecord::Base
  has_many :newsphotos, :dependent => :destroy
  attr_accessible :content, :name

  paginates_per 5

  #delete the blank diretory built by carrierwave
  before_destroy :remember_id
  after_destroy :remove_id_directory

  protected
  def remember_id
    @id = id
  end

  def remove_id_directory
    FileUtils.remove_dir("#{Rails.root}/public/uploads/Newsphoto/#{@id}", :force => true)
  end
end
