class Order < ActiveRecord::Base
    attr_accessible :id, :first_course_id, :second_course_id, :drink_id, :user_id
    belongs_to :user
    has_one :first_course
    has_one :second_course
    has_one :drink
end
