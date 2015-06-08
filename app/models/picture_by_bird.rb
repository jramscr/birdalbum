class PictureByBird < ActiveRecord::Base
  belongs_to :picture
  belongs_to :bird
end
