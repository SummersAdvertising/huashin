class StaticPageController < ApplicationController
  def index
  	layout 'index'
  	@news = News.order('created_at DESC').page(params[:page])
  end
  def intro
  end
end
