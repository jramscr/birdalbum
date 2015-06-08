class Bird < ActiveRecord::Base
  paginates_per 5

  belongs_to :kind

  has_one :common_name

  has_many :picture_by_birds
  has_many :pictures, through: :picture_by_birds

  has_many :bird_by_users
  has_many :users, through: :bird_by_users
end
