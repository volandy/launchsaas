class Order < ActiveRecord::Base
    require 'date'
    attr_accessible :id, :first_course_id, :second_course_id, :drink_id, :user_id
    validates :first_course_id, presence: true
    validates :second_course_id, presence: true
    validates :drink_id, presence: true 
    belongs_to :user
    has_one :first_course
    has_one :second_course
    has_one :drink
    
  def self.created(a_date)
    return Order.where(created_at: to_timerange(a_date))
  end
  
  
 private
   def self.to_timerange(a_date)
    raise ArgumentError, "expected 'a_date' to be a Date" unless a_date.is_a? Date
    dts = Time.new(a_date.year, a_date.month, a_date.day, 0, 0, 0).utc
    dte = dts + (24 * 60 * 60) - 1
    return (dts...dte)
   end
end
