@questions.each do |question|
    json.set! question.id do 
        json.extract! question, :id, :question, :answerA, :answerB, :answerC, :answerD, :correct_answer
    end
end