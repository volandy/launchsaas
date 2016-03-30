class FirstCourse < ActiveRecord::Base
    attr_accessible :id
    belongs_to :order
end
