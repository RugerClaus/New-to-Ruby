$questions = {
    "one" => "What is the name of Rush's original drummer?",
    "two" => "What year did the album 'Hemispheres' release?",
    "three" => "What year did the band form?",
    "four" => "What is Alex Lifeson's real last name?",
    "five" => "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"
}
$answers = {
    "one" => ["(A): John Bonham", "(B): James Franco", "(C): Billie Jean", "(D): John Rutsey"],
    "two" => ["(A): 1994","(B): 1873","(C): 1978","(D): 1492"],
    "three" => ["(A): 1960", "(B): 1873","(C): 1999", "(D): 1969"],
    "four" => ["(A): Jackson", "(B): Zivojinovic", "(C): Ryan", "(D): Kolishnakov"],
    "five" => ["(A): Hemispheres", "(B): Roll The Bones", "(C): Let It Be", "(D): Moving Pictures"]
}
$numbers_of_questions = ["(A): ", "(B): ", "(C): ", "(D): "]



def endgame
    puts "Wrong! *in Donald Trump's voice*"
    puts 'GAME OVER!'
    rush_trivia()
end

def game_loop
    
    def question_loop_one
        i = 0
        while i < 5 do
            i += 1
            case i
            when 1 then
                puts $answers["one"][i-1]

            when 2 then
                puts $answers["one"][i-1]
            when 3 then
                puts $answers["one"][i-1]
            when 4 then
                puts $answers["one"][i-1]
            end

        end
    end
    def question_loop_two
        i = 0
        while i < 5 do
            i += 1
            case i
            when 1 then
                puts $answers["two"][i-1]

            when 2 then
                puts $answers["two"][i-1]
            when 3 then
                puts $answers["two"][i-1]
            when 4 then
                puts $answers["two"][i-1]
            end
        end
    end
    def question_loop_three
        i = 0
        while i < 5 do
            i += 1
            case i
            when 1 then
                puts $answers["three"][i-1]
            when 2 then
                puts $answers["three"][i-1]
            when 3 then
                puts $answers["three"][i-1]
            when 4 then
                puts $answers["three"][i-1]
            end
        end
    end
    def question_loop_four
        i = 0
        while i < 5 do
            i += 1
            case i
            when 1 then
                puts $answers["four"][i-1]
            when 2 then
                puts $answers["four"][i-1]
            when 3 then
                puts $answers["four"][i-1]
            when 4 then
                puts $answers["four"][i-1]
            end
        end
    end
    def question_loop_five
        i = 0
        while i < 5 do
            i += 1
            case i
            when 1 then
                puts $answers["five"][i-1]

            when 2 then
                puts $answers["five"][i-1]
            when 3 then
                puts $answers["five"][i-1]
            when 4 then
                puts $answers["five"][i-1]
            end
        end
    end
    i = 0
    final_score = "#####  Final Score: #{i}  #####"
    for i in 0..5 do
        case i
        when 1 then
            puts "Score: #{i-1}"
            puts $questions["one"]
            question_loop_one
            input = gets.chomp()
            if input != 'd'
                puts final_score
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
            end
        when 2 then 
            puts "Score: #{i-1}"
            puts $questions["two"]
            question_loop_two
            input = gets.chomp()
            if input != 'c'
                puts final_score
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
            end
        when 3 then
            puts "Score: #{i-1}"
            puts $questions["three"]
            question_loop_three
            input = gets.chomp()
            if input != 'd'
                puts final_score
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
            end
        when 4 then
            puts "Score: #{i-1}"
            puts $questions["four"]
            question_loop_four
            input = gets.chomp()
            if input != 'b'
                puts final_score
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
            end
        when 5 then
            puts "Score: #{i-1}"
            puts $questions["five"]
            question_loop_five
            input = gets.chomp()
            if input != 'b'
                puts final_score
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
            end
        end
    end
end

def rush_trivia
    puts "Welcome to Rush Trivia"
    puts "Would you like to begin? y/n"
    input = gets.chomp()
    if input != 'y'
        puts "Quitting..."
        sleep 2
    else
        begin
            game_loop
        rescue => exception
            'Error'
        end
    end
end
begin
    rush_trivia
rescue => exception
    'Error'
end