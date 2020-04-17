class Poll < ApplicationRecord
  has_many :questions, 
    foreign_key: :poll_id, # Question's poll_id
    primary_key: :id, # Poll's id
    class_name: :Question

  belongs_to :author, 
    foreign_key: :user_id, # Poll's user_id
    primary_key: :id, # User's id
    class_name: :User 
end 