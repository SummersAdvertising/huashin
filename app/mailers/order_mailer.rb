class OrderMailer < ActionMailer::Base
  default from: "farm@farm.com"
  def send_order(order)
  	@order = order

  	mail(:to => [@order.email, "kobanae@gmail.com"],
  	     :subject => "#{@order.customername}, your order")
  	
  end
end
