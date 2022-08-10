

def endgame
    puts "Wrong! *in Donald Trump's voice*"
    puts 'GAME OVER!'
    rush_trivia()
end

    $q_and_a = ["What is the name of Rush's original drummer?",
    "What year did the album 'Hemispheres' release?","What year did the band form?",
    "What is Alex Lifeson's real last name?","What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"]
    
    $answers_one = ['John Bonham', 'James Franco', 'Billie Jean', 'John Rutsey']
    $answers_two = ['1994', '1873', '1978', '1492']
    $answers_three = ['1960', '1873','1999', '1969']
    $answers_four = ['Jackson', 'Zivojinovic', 'Ryan', 'Kolishnakov']
    $answers_five = ['Hemispheres', 'Roll The Bones', 'Let It Be', 'Moving Pictures']
    $numbers_of_questions = ["(A): ", "(B): ", "(C): ", "(D): "]


def rush_trivia

    def question1            
        puts $q_and_a[0]
        puts "#{$numbers_of_questions[0]} #{$answers_one[0]}"
        puts "#{$numbers_of_questions[1]} #{$answers_one[1]}"
        puts "#{$numbers_of_questions[2]} #{$answers_one[2]}"
        puts "#{$numbers_of_questions[3]} #{$answers_one[3]}"
    end
    def question2
        puts $q_and_a[1]
        puts "#{$numbers_of_questions[0]} #{$answers_two[0]}"
        puts "#{$numbers_of_questions[1]} #{$answers_two[1]}"
        puts "#{$numbers_of_questions[2]} #{$answers_two[2]}"
        puts "#{$numbers_of_questions[3]} #{$answers_two[3]}"
    end
    def question3
        puts $q_and_a[2]
        puts "#{$numbers_of_questions[0]} #{$answers_three[0]}"
        puts "#{$numbers_of_questions[1]} #{$answers_three[1]}"
        puts "#{$numbers_of_questions[2]} #{$answers_three[2]}"
        puts "#{$numbers_of_questions[3]} #{$answers_three[3]}"
    end
    def question4
        puts $q_and_a[3]
        puts "#{$numbers_of_questions[0]} #{$answers_four[0]}"
        puts "#{$numbers_of_questions[1]} #{$answers_four[1]}"
        puts "#{$numbers_of_questions[2]} #{$answers_four[2]}"
        puts "#{$numbers_of_questions[3]} #{$answers_four[3]}"
    end
    def question5
        puts $q_and_a[4]
        puts "#{$numbers_of_questions[0]} #{$answers_five[0]}"
        puts "#{$numbers_of_questions[1]} #{$answers_five[1]}"
        puts "#{$numbers_of_questions[2]} #{$answers_five[2]}"
        puts "#{$numbers_of_questions[3]} #{$answers_five[3]}"
    end

    puts 'Welcome to Rush Trivia'
    i = 0
    for i in 0..5 do
        i += 1
    case i 
        when 1 then
            puts "Score: #{i-1}"
            question1
            input = gets.chomp()
            if input != 'd'
                puts "#####  Final Score: #{i-1}  #####"
                sleep 1
                endgame
            else
                puts 'Correct!'
                puts "\e[H\e[2J"
                
            end
        when 2 then
            puts "Score: #{i-1}"
            question2
            input = gets.chomp()
            if input != 'c'
                puts "#####  Final Score: #{i-1}  #####"
                sleep 1
                endgame
            else
                puts 'Correct!'
                puts "\e[H\e[2J"
                
            end
        when 3 then
            puts "Score: #{i-1}"
            question3
            input = gets.chomp()
            if input == 'd'
                puts 'Correct!'
                puts "\e[H\e[2J"
            else
                puts "#####  Final Score: #{i-1}  #####"
                sleep 1
                endgame
            end
        when 4 then
            puts "Score: #{i-1}"
            question4
            input = gets.chomp()
            if input == 'b'
                puts 'Correct!'
                puts "\e[H\e[2J"
            else
                puts "#####  Final Score: #{i-1}  #####"
                sleep 1
                endgame
            end
        when 5 then
            puts "Score: #{i-1}"
            question5
            input = gets.chomp()
            if input == 'b'
                puts 'Correct!'
                puts "\e[H\e[2J"
                sleep 0.5
                puts 'loading.'
                sleep 0.5
                puts "\e[H\e[2J"
                puts 'loading..'
                sleep 0.5
                puts "\e[H\e[2J"
                puts 'loading...'
                sleep 1
                puts "#####  Final Score: #{i}  #####"
                sleep 5
            else
                puts "#####  Final Score: #{i-1}  #####"
                sleep 1
                endgame
            end
        end
    end
end
begin
    rush_trivia
rescue => exception
    rush_trivia
end
Footer
