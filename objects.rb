
def rush_trivia

    answers = [
        "John Rutsey",
        "1978",
        "1969",
        "Zivojinovic",
        "Roll The Bones"
    ]
    questions = [
        "What is the name of Rush's original drummer?",
        "What year did the album 'Hemispheres' release?",
        "What year did the band form?",
        "What is Alex Lifeson's real last name?",
        "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?",
    ]

    puts 'Welcome to Rush Trivia'
    puts 'Press enter/return to begin'
    input = gets
    if input == ''
        puts "Let's begin!"
    end

    puts ''
    puts ''
    puts questions[0]
    input = gets.chomp()
    if input == answers[0]
        puts 'Correct!'
        puts ''
        puts ''
        puts 'Score: 1'
        puts 'Please Press enter'
        input = gets
        puts questions[1]
        input = gets.chomp()
        if input == answers[1]
            puts 'Correct!'
            puts ''
            puts 'Score: 2'
            puts 'Please Press enter'
            input = gets
            puts questions[2]
            input = gets.chomp() 
            if input == answers[2]
                puts 'Correct!'
                puts ''
                puts 'Score: 3'
                puts 'Please Press enter'
                input = gets
                puts questions[3]
                input = gets.chomp()
                if input == answers[3]
                    puts 'Correct!'
                    puts ''
                    puts 'Score: 4'
                    puts 'Please Press enter'
                    input = gets
                    puts questions[4]
                    input = gets.chomp()
                    if input == answers[4]
                        puts 'Correct!'
                        puts ''
                        puts 'Score: 5'
                        puts 'Please Press enter'
                        input = gets
                        puts 'Final Score: 5'
                        puts 'GAME OVER!'

                    else
                        puts 'Wrong'
                        puts 'Please press enter to restart'
                        input = gets
                        rush_trivia()
                    end
                else
                    puts 'Wrong'
                    puts 'Please press enter to restart'
                    input = gets
                    rush_trivia()
                end
            else
                puts 'Wrong'
                puts 'Please press enter to restart'
                input = gets
                rush_trivia()
            end

        else
            puts 'Wrong'
            puts 'Please press enter to restart'
            input = gets
            rush_trivia()  
        end
    else
        puts 'Wrong'
        puts 'Please press enter to restart'
        input = gets
        rush_trivia()
    end

end
rush_trivia()