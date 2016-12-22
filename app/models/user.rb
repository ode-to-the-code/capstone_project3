class User < ApplicationRecord
  has_secure_password
  has_many :subscriptions
  has_many :deeds, through: :subscriptions
  has_many :votes
end
