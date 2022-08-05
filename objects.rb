
def rush_trivia

    def endgame
        puts 'Wrong! *in donald trumps voice*'
        puts 'GAME OVER!'
        rush_trivia()
    end

    q_and_a = [
        "John Rutsey",
        "1978",
        "1969",
        "Zivojinovic",
        "Roll The Bones",
        "What is the name of Rush's original drummer?",
        "What year did the album 'Hemispheres' release?",
        "What year did the band form?",
        "What is Alex Lifeson's real last name?",
        "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?",  
    ]


    puts 'Welcome to Rush Trivia'
    puts 'Press enter/return to begin'
    input = gets
    x = 0
    
    

    # using for loop with the range
    for questions in 1..5 do
        
        x+=1
        if x == 1
            puts 'Score: ' + String(x-1)
            puts q_and_a[5]
            input = gets.chomp()
            if input == q_and_a[0]
                puts 'Correct'
            else
                endgame()
            end
            
        end
        if x == 2
            puts 'Score: ' + String(x-1)
            puts q_and_a[6]
            input = gets.chomp()
            if input == q_and_a[1]
                puts 'Correct'
            else
                endgame()
            end
            
        end
        if x == 3
            puts 'Score: ' + String(x-1)
            puts q_and_a[7]
            input = gets.chomp()
            if input == q_and_a[2]
                puts 'Correct'
            else
                endgame()
            end
            
        end
        if x == 4
            puts 'Score: ' + String(x-1)
            puts q_and_a[8]
            input = gets.chomp()
            if input == q_and_a[3]
                puts 'Correct'
            else
                endgame()
            end
            
        end
        if x == 5
            puts 'Score: ' + String(x-1)
            puts q_and_a[9]
            input = gets.chomp()
            if input == q_and_a[4]
                puts 'Correct'
                puts 'You Win!'
                puts '#####  Final Score: ' + String(x) + '  #####'
            else
                endgame()
            end
            
        end
    end
end
begin
    rush_trivia
rescue => exception
    puts 'Error!'
end