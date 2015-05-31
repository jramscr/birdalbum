class PictureByBirdByUser < ActiveRecord::Base
  belongs_to :picture
  belongs_to :user
  belongs_to :bird
end
