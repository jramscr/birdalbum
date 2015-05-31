class Bird < ActiveRecord::Base
  belongs_to :kind
  has_many :picture_by_bird_by_users
  has_many :users, through: :picture_by_bird_by_user
  has_many :pictures, through: :picture_by_bird_by_user
end
