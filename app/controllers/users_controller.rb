class UsersController < ApplicationController
  before_filter do 
    redirect_to :root unless current_user && current_user.admin?
  end
    
    def index
        @users = User.all
    end
end
