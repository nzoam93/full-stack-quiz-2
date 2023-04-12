class Question < ApplicationRecord
    validates :question, :answerA, :answerB, :answerC, :answerD, :correct_answer, presence: true 
end
