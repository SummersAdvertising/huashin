class Admin::ProductclassesController < ApplicationController
  before_filter :require_is_admin
  layout 'admin'
  
  
  
  def index
    @productclasses = Productclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productclasses }
    end
  end

  # GET /productclasses/1
  # GET /productclasses/1.json
  def show
    @productclass = Productclass.find(params[:id])
    @products = @productclass.products.order('addDate DESC, updated_at DESC, created_at DESC').all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productclass }
    end
  end

  # GET /productclasses/new
  # GET /productclasses/new.json
  def new
    @productclass = Productclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productclass }
    end
  end

  # GET /productclasses/1/edit
  def edit
    @productclass = Productclass.find(params[:id])
  end

  # POST /productclasses
  # POST /productclasses.json
  def create
    @productclass = Productclass.new(params[:productclass])

    respond_to do |format|
      if @productclass.save
        format.html { redirect_to admin_productclasses_path, notice: 'Productclass was successfully created.' }
        format.json { render json: @productclass, status: :created, location: @productclass }
      else
        format.html { render action: "new" }
        format.json { render json: @productclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productclasses/1
  # PUT /productclasses/1.json
  def update
    @productclass = Productclass.find(params[:id])

    respond_to do |format|
      if @productclass.update_attributes(params[:productclass])
        format.html { redirect_to admin_productclass_path(@productclass), notice: 'Productclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productclasses/1
  # DELETE /productclasses/1.json
  def destroy
    @productclass = Productclass.find(params[:id])
    @productclass.destroy

    respond_to do |format|
      format.html { redirect_to admin_productclasses_path }
      format.json { head :no_content }
    end
  end
end
