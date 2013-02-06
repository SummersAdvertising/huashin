class OrdersController < ApplicationController
  
  def index
    @orderproducts = Orderproduct.order('addDate DESC, updated_at DESC, created_at DESC').all
    @order = Order.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  def create
    @orderproducts = Orderproduct.order('addDate DESC, updated_at DESC, created_at DESC').all
    @order = Order.new(params[:order])
    @orderitems = ActiveSupport::JSON.decode("["+params[:orderitem]+"]")

    respond_to do |format|
      if @order.save

        @orderitems.each do|orderitem|
          @orderitem = @order.orderitems.new()
          @orderitem.orderproduct_id = orderitem['id']
          @orderitem.amount = orderitem['amount']

          @orderitem.save

        end

        # send a order Email after save
        OrderMailer.send_order(@order).deliver

        format.html { redirect_to action: "index" }
        format.json { render json: @order, status: :created, location: @order }
        format.js {}       

      else
        format.html { render action: "index" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

end
