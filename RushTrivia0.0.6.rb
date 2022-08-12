require 'json'

$questions = File.read("RushTrivia.json")
data_hash = JSON.parse($questions)

questions = [
    TriviaQuestions.new(data_hash["$q1"],"d"),
    TriviaQuestions.new(data_hash["$q2"],"c"),
    TriviaQuestions.new(data_hash["$q3"],"d"),
    TriviaQuestions.new(data_hash["$q4"],"b"),
    TriviaQuestions.new(data_hash["$q5"],"b")
]




def quiz(questions)
    def play_again
        puts "Would you like to play again? y/n"
        input = gets.chomp()
        if input == "y" || input == "Y"
            return
        else
            return
        end
    end
    answer = ""
    score = 0


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
end

quiz(questions)