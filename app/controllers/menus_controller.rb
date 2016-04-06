class MenusController < ApplicationController
    def index
      @first_course = FirstCourse.all
      @second_course = SecondCourse.all
      @drink = Drink.all
      @first_course_by_date = @first_course.group_by { |first_course| first_course.created_at }
      @second_course_by_date = @second_course.group_by { |second_course| second_course.created_at }
      @drinks_by_date = @drink.group_by { |drinks| drinks.created_at }
      @date = params[:date] ? Date.parse(params[:date]) : Date.today
      @currentdaysfirstcourses = []
      @currentdayssecondcourses = []
      @currentdaysdrinks = []
    end
end
