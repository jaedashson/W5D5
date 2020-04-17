class Question < ApplicationRecord
  has_many :answer_choices, 
    foreign_key: :question_id, # AnswerChoice's question_id
    primary_key: :id, # Question's id
    class_name: :AnswerChoice

  belongs_to :poll,
    foreign_key: :poll_id, # Question's poll_id
    primary_key: :id, # Poll's id
    class_name: :Poll 
end 