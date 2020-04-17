class CreateIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :indices do |t|
      add_index :polls, :user_id
      add_index :questions, :poll_id 
      add_index :answer_choices, :question_id 
    end
  end
end
