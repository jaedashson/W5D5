class AnswerChoice < ApplicationRecord
  has_many :responses,
    foreign_key: :answer_choice_id, # Response's answer_choice_id
    primary_key: :id, # AnswerChoice's id
    class_name: :Response

	belongs_to :question,
    foreign_key: :question_id, # AnswerChoice's question_id
    primary_key: :id, # Question's id
    class_name: :Question 
end 
