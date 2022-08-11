class RushTriviaQuestions
    attr_accessor :question, :answer
    def initialize(question,answer)
        @question = question
        @question = question
    end
end

$q1 = "What is the name of Rush's original drummer?\n(A): John Bonham\n(B): James Franco\n(C): Billie Jean\n(D): John Rutsey"
$q2 = "What year did the album 'Hemispheres' release?\n(A): 1994\n(B): 1873\n(C): 1978\n(D): 1492"
$q3 = "What year did the band form?\n(A): 1960\n(B): 1873\n(C): 1999\n(D): 1969"
$q4 = "What is Alex Lifeson's real last name?\n(A): Jackson\n(B): Zivojinovic\n(C): Ryan\n(D): Kolishnakov"
$q5 = "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?\n(A): Hemispheres\nB): Roll The Bones\n(C): Let It Be\n(D): Moving Pictures"

questions = [
    RushTriviaQuestions.new($q1,"d"),
    RushTriviaQuestions.new($q2,"c"),
    RushTriviaQuestions.new($q3,"d"),
    RushTriviaQuestions.new($q4,"b"),
    RushTriviaQuestions.new($q5,"b"),
]



def rush_trivia(questions)
    def play_again
        puts "Would you like to play again? y/n"
        input = gets.chomp()
        if input == "y" || input == "Y"
            rush_trivia(questions)
        else
            return
        end
    end
    answer = ""
    score = 0


    for question in questions do
        puts question.question
        answer = gets.chomp()
        if answer == question.answer
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

rush_trivia(questions)