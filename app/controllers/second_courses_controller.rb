class SecondCoursesController < ApplicationController
  before_filter do 
    redirect_to :root unless current_user && current_user.admin?
  end
    def new
        @second_course = SecondCourse.new
    end
    
    def create
    @second_course = SecondCourse.create(params[:second_course])
    if @second_course.save
      redirect_to root_url
    else
      render :new
    end
    end
end
