class BirdByUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :bird
end
