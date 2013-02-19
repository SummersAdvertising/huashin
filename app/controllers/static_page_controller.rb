class StaticPageController < ApplicationController
  def index
  	@news = News.order('created_at DESC').page(params[:page])
  	render :template => 'layout/index'
  end
  def intro
  	render :template => 'layout/application'
  end
end
