class Api::V1::OrdersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin, only:  [:index]
     respond_to :json
      

  def index
    respond_with Order.all.where(:created_at => Time.now.strftime("%Y-%m-%d"))
  end
  
    private
  def ensure_admin
    unless current_user.admin?
      redirect_to root_path
      return false
    end
  end
end
