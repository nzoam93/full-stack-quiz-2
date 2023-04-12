# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do 
    puts 'Destroying tables'
    Question.destroy_all 

    puts 'Restting id sequences...'
    %w(questions).each do |table_name|
        ApplicationRecord.connection.reset_pk_sequence!(table_name)
    end 

    puts 'Creating seed data'
    q1 = Question.create!(question: 'What is the current year?', answerA: '2020', answerB: '2023', answerC: '2024', answerD: '2025', correct_answer: '2023')
    q2 = Question.create!(question: 'Who is the current president?', answerA: 'Bush', answerB: 'Obama', answerC: 'Trump', answerD: 'Biden', correct_answer: 'Biden')
    q3 = Question.create!(question: 'Which is the largest state?', answerA: 'Texas', answerB: 'Michigan', answerC: 'California', answerD: 'Alaska', correct_answer: 'Alaska')
    q4 = Question.create!(question: 'Which animal has the highest blood pressure?', answerA: 'Giraffe', answerB: 'Lion', answerC: 'Cheetah', answerD: 'Elephant', correct_answer: 'Giraffe')
    q5 = Question.create!(question: 'Which country produces the most coffee?', answerA: 'Denmark', answerB: 'Brazil', answerC: 'Colombia', answerD: 'Venezuela', correct_answer: 'Brazil')


    puts 'Done!'
end 