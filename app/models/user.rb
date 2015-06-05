class User < ActiveRecord::Base
  include UsersHelper
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates_presence_of :username, :password, :password_confirmation, on: :create

  belongs_to :person
  belongs_to :user_type
  has_many :picture_by_users
  has_many :pictures, through: :picture_by_users
  has_many :picture_by_bird_by_users
  has_many :pictures, through: :picture_by_bird_by_user
  has_many :birds, through: :picture_by_bird_by_user

  def admin?
    return false unless formatted_user_type(self) == "Administrador"
    return true
  end
end
