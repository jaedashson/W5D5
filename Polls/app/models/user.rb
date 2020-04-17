class User < ApplicationRecord
  has_many :authored_polls,
    foreign_key: :user_id, # Poll's user_id
    primary_key: :id, # User's id
    class_name: :Poll 
  

  has_many :responses, 
    foreign_key: :user_id, # Response's user_id
    primary_key: :id, # User's id
    class_name: :Response 
end 