class SecondCourse < ActiveRecord::Base
    attr_accessible :id, :name, :price, :order_id
    belongs_to :order
    validates :name, :price, presence: true
end
