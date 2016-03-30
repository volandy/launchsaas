class Order < ActiveRecord::Base
    attr_accessible :id
    belongs_to :user
    has_one :first_course
    has_one :second_course
    has_one :drink
end
