class Kind < ActiveRecord::Base
  has_one :order
  has_one :bird
end
