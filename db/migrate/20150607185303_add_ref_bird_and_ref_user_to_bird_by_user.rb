class AddRefBirdAndRefUserToBirdByUser < ActiveRecord::Migration
  def change
    add_reference :bird_by_users, :bird, index: true
    add_reference :bird_by_users, :user, index: true
  end
end
