require_relative 'TriviaQuestions.rb'
require_relative 'JSONParser.rb'

include TriviaQuestions
include JsonParser

puts "Please enter the name of a quiz file in the assets directory"
input = gets.chomp()
JsonParser.quiz_selector(input)

questions = [
    TriviaQuestions.new(data_hash["$q1"],"d"),
    TriviaQuestions.new(data_hash["$q2"],"c"),
    TriviaQuestions.new(data_hash["$q3"],"d"),
    TriviaQuestions.new(data_hash["$q4"],"b"),
    TriviaQuestions.new(data_hash["$q5"],"b")
]
for question in questions do
    puts question.question
    answer = gets.chomp()
    if answer != question.answer
        score += 1
    end
end
puts ("You got #{score} out of #{questions.length} correct!")
if score >= 3
    puts "You win"
    play_again
else
    puts "You lose"
    play_again
end