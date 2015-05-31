class Picture < ActiveRecord::Base
  has_many :picture_by_beak_types
  has_many :beak_types, through: :picture_by_beak_types
  has_many :picture_by_users
  has_many :users, through: :picture_by_users
  has_many :picture_by_bird_by_users
  has_many :users, through: :picture_by_bird_by_user
  has_many :birds, through: :picture_by_bird_by_user
end
