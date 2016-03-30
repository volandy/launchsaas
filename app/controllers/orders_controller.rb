class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
      @order = Order.new
  end

  def create
  @order = Order.new(params[:user])
    if @order.save
      # Handle a successful save.
    else
      @title = "Sign up"
      render = 'new'
    end
  end
  
  def destroy
  end
end
