class Admin::OrderproductsController < ApplicationController
  before_filter :require_is_admin
  layout 'admin'

  def index
    @orderproducts = Orderproduct.order('addDate DESC, updated_at DESC, created_at DESC').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderproducts }
    end
  end

  def show
    @orderproduct = Orderproduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderproduct }
    end
  end

  def new
    @orderproduct = Orderproduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderproduct }
    end
  end

  def edit
    @orderproduct = Orderproduct.find(params[:id])
  end

  def create
    @orderproduct = Orderproduct.new(params[:orderproduct])
    @orderproduct.admindelete = false

    respond_to do |format|
      if @orderproduct.save
        format.html { redirect_to admin_orderproducts_path, notice: 'Orderproduct was successfully created.' }
        format.json { render json: @orderproduct, status: :created, location: @orderproduct }
      else
        format.html { render action: "new" }
        format.json { render json: @orderproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @orderproduct = Orderproduct.find(params[:id])
    flash[:notice] = 'successfully updated.'

    respond_to do |format|
      if @orderproduct.update_attributes(params[:orderproduct])
        format.html { redirect_to edit_admin_orderproduct_path(@orderproduct), notice: 'Orderproduct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @orderproduct = Orderproduct.find(params[:id])
    @orderproduct.admindelete = true;
    @orderproduct.save

    respond_to do |format|
      format.html { redirect_to admin_orderproducts_url }
      format.json { head :no_content }
    end
  end
end
