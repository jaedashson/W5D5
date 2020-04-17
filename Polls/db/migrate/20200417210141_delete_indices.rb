class DeleteIndices < ActiveRecord::Migration[5.2]
  def change
    remove_index :polls, :user_id 
    remove_index :questions, :poll_id 
    remove_index :answer_choices, :question_id 
  end
end
