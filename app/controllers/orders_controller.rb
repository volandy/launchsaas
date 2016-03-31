class OrdersController < ApplicationController
  before_filter :authenticate_user!
  def show
    @order = Order.find(params[:id])
  end

  def new
      @order = Order.new
  end

  def create
  @order = current_user.orders.create(params[:order])
    if @order.save
      redirect_to root_url
    else
      
    render :new
    end
  end
  
  def destroy
  end
  

end
