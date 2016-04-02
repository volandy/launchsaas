class OrdersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin, only:  [:index]
  
  def index
    @orders = Order.created(Date.today)
  end

  def new
      @order = Order.new
  end

  def create
  @order = current_user.orders.create(order_params)
    if @order.save
      redirect_to root_url
    else
      
    render :new
    end
  end
  
  def destroy
  end
  
  private
  def order_params
    params.require(:order).permit(:first_course_id, :second_course_id, :drink_id)
  end
  
  def ensure_admin
    unless current_user.admin?
      redirect_to root_path
      return false
    end
  end

end
