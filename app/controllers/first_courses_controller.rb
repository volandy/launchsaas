class FirstCoursesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin
    def new
        @first_course = FirstCourse.new
    end
    
    def create
    @first_course = FirstCourse.create(params[:first_course])
    if @first_course.save
      redirect_to root_url
    else
      render :new
    end
    end
    
    private
    
  def ensure_admin
    unless current_user.admin?

      redirect_to root_path

      return false
    end
  end
end
