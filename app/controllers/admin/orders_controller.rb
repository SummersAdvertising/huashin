class Admin::OrdersController < ApplicationController
  before_filter :require_is_admin
  layout 'admin'

  def index
    @orders = Order.order('created_at DESC').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end
  
end
