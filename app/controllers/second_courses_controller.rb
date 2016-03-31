class SecondCoursesController < ApplicationController
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
