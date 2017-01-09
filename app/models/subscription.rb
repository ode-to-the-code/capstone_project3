class Subscription < ApplicationRecord
  belongs_to :deed
  belongs_to :user 
end
# hidden_text_field_tag