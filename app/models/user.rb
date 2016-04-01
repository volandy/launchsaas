class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessible :id, :email, :name, :password, :password_confirmation 
  after_create :set_admin
  has_many :orders, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :email, presence: true

  private
  def set_admin
   if  User.count == 1
     User.first.update_attribute(:admin, true)
   else
     return true
   end
  end

end
