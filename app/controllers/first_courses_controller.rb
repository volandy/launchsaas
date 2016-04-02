class FirstCoursesController < ApplicationController
  before_filter do 
    redirect_to :root unless current_user && current_user.admin?
  end
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

end
