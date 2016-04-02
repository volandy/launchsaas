class DrinksController < ApplicationController
  before_filter do 
    redirect_to :root unless current_user && current_user.admin?
  end
    def new
        @drink = Drink.new
    end
    
    def create
    @drink = Drink.create(params[:drink])
    if @drink.save
      redirect_to root_url
    else
      render :new
    end
    end
end
