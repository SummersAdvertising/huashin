#encoding: utf-8
class OrderMailer < ActionMailer::Base
  default from: "farm@farm.com"
  def send_order(order)
  	@order = order

  	mail(:to => [@order.email, "kobanae@gmail.com"],
  	     :subject => "來自#{@order.customername}的訂單")
  	
  end
end
