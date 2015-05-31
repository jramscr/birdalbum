class SubOrder < ActiveRecord::Base
  belongs_to :order
  has_one :family
end
