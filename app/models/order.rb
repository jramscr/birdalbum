class Order < ActiveRecord::Base
  belongs_to :kind
  has_one :sub_order
end
