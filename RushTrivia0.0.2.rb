
def rush_trivia

    def endgame
        puts "Wrong! *in Donald Trump's voice*"
        puts 'GAME OVER!'
        rush_trivia()
    end

    q_and_a = ["What is the name of Rush's original drummer?",
    "What year did the album 'Hemispheres' release?","What year did the band form?",
    "What is Alex Lifeson's real last name?","What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"]

    answers_one = ['John Bonham', 'James Franco', 'Billie Jean', 'John Rutsey']
    answers_two = ['1994', '1873', '1978', '1492']
    answers_three = ['1960', '1873','1999', '1969']
    answers_four = ['Jackson', 'Zivojinovic', 'Ryan', 'Kolishnakov']
    answers_five = ['Hemispheres', 'Roll The Bones', 'Let It Be', 'Moving Pictures']
    numbers_of_questions = ["(1): ", "(2): ", "(3): ", "(4): "]
    
    puts 'Welcome to Rush Trivia'
    puts 'press enter to begin'
    input = gets
    def questions()
        i = 0
        while i <= 5
            i += 1
            case i
        when i == 1 then
                puts q_and_a[0]
                puts "#{numbers_of_questions[0]} #{answers_one[0]}"
                puts "#{numbers_of_questions[1]} #{answers_one[1]}"
                puts "#{numbers_of_questions[2]} #{answers_one[2]}"
                puts "#{numbers_of_questions[3]} #{answers_one[3]}"
                input = gets.chomp()
                if input == '4'
                    puts 'Correct'
                    puts "\e[H\e[2J"
                else
                    puts '#####  Final Score: ' + String(x-1) + '  #####'
                    endgame
                end
                return
        when i == 2 then
                puts "#{numbers_of_questions[0]} #{answers_two[0]}"
                puts "#{numbers_of_questions[1]} #{answers_two[1]}"
                puts "#{numbers_of_questions[2]} #{answers_two[2]}"
                puts "#{numbers_of_questions[3]} #{answers_two[3]}"
                if input == '3'
                    puts 'Correct'
                    puts "\e[H\e[2J"
                else
                    puts '#####  Final Score: ' + String(x-1) + '  #####'
                    endgame
                end
                return
        when i == 3 then
                puts "#{numbers_of_questions[0]} #{answers_three[0]}"
                puts "#{numbers_of_questions[1]} #{answers_three[1]}"
                puts "#{numbers_of_questions[2]} #{answers_three[2]}"
                puts "#{numbers_of_questions[3]} #{answers_three[3]}"
                if input == '4'
                    puts 'Correct'
                    puts "\e[H\e[2J"
                else
                    puts '#####  Final Score: ' + String(x-1) + '  #####'
                    endgame
                end
                return
        when i == 4 then
                puts "#{numbers_of_questions[0]} #{answers_four[0]}"
                puts "#{numbers_of_questions[1]} #{answers_four[1]}"
                puts "#{numbers_of_questions[2]} #{answers_four[2]}"
                puts "#{numbers_of_questions[3]} #{answers_four[3]}"
                if input == '2'
                    puts 'Correct'
                    puts "\e[H\e[2J"
                else
                    puts '#####  Final Score: ' + String(x-1) + '  #####'
                    endgame
                end
                return
        when i == 5 then
                
                puts "#{numbers_of_questions[0]} #{answers_five[0]}"
                puts "#{numbers_of_questions[1]} #{answers_five[1]}"
                puts "#{numbers_of_questions[2]} #{answers_five[2]}"
                puts "#{numbers_of_questions[3]} #{answers_five[3]}"
                if input == '2'
                    puts 'Correct'
                    puts "\e[H\e[2J"
                else
                    puts '#####  Final Score: ' + String(x-1) + '  #####'
                    endgame
                end
                return
            end
        end
    end
    if input == ''
        puts 'hello'
        sleep 5
    else
        questions
    end
end
begin
    rush_trivia
rescue => exception
    puts 'Error!'
end