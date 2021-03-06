class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.integer :poll_id, null: false  
    end
    add_index :questions, :poll_id, unique: true
  end
end
