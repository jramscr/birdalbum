class Family < ActiveRecord::Base
  belongs_to :sub_order
  has_one :gender
end
