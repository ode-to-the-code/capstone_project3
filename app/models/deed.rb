class Deed < ApplicationRecord
  # associations go here
  has_many :subscriptions
  has_many :votes 
  has_many :users, through: :subscriptions

end
