class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessible :id, :email, :name, :password
  before_save :set_admin
  has_many :orders, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :name, :email, :password, presence: true
  private
  def set_admin
    self.admin = User.count == 0
  end
end
