class Deed < ApplicationRecord
  # associations go here
  has_many :subscriptions
  has_many :votes 
  has_many :users, through: :subscriptions
  
end

# build out the MVP- the login, index list, 
# see deeds and subscribe to deeds 
# go to a users show page and only see my deeds that I subscribed to