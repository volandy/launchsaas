class FirstCourse < ActiveRecord::Base
    attr_accessible :id, :name, :price
    belongs_to :order
end
