class User < ApplicationRecord
  has_secure_password
  has_many :subscriptions
  has_many :deeds
  has_many :votes
  has_many :comments
  
end
