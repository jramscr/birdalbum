class PictureByBeakType < ActiveRecord::Base
  belongs_to :beak_type
  belongs_to :picture
end
