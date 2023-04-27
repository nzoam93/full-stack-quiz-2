class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question, null: false 
      t.string :answerA, null: false
      t.string :answerB, null: false 
      t.string :answerC, null: false 
      t.string :answerD, null: false  
      t.string :correct_answer, null: false 
      t.timestamps
    end
  end
end
