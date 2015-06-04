class Bird < ActiveRecord::Base
  paginates_per 5

  belongs_to :kind
  has_many :picture_by_bird_by_users
  has_many :users, through: :picture_by_bird_by_user
  has_many :pictures, through: :picture_by_bird_by_user
end
