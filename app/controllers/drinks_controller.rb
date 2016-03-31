class DrinksController < ApplicationController
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
