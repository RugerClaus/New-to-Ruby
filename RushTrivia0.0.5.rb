
def play_again
    puts "Would you like to play again? y/n"
    input = gets.chomp()
    if input == "y" || input == "Y"
        rush_trivia
    else
        return
    end
end

def endgame
    puts "L"
    sleep 1
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LO"
    sleep 1
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOS"
    sleep 1
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOSE"
    sleep 1
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOSER"
    sleep 1
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOSER!"
    sleep 0.5
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOSER!!"
    sleep 0.5
    puts "\e[H\e[2J"
    sleep 0.5
    puts "LOSER!!!"
    sleep 4
    play_again
end


def rush_trivia


    $answer = ""
    $score = 0
    $current_score = "#####  Score: #{$score}  #####"
    $final_score = "#####  Final Score: #{$score - 1}  #####"
    $answers_one = ["(A): John Bonham", "(B): James Franco", "(C): Billie Jean", "(D): John Rutsey"]
    $answers_two = ["(A): 1994","(B): 1873","(C): 1978","(D): 1492"]
    $answers_three = ["(A): 1960", "(B): 1873","(C): 1999", "(D): 1969"]
    $answers_four = ["(A): Jackson", "(B): Zivojinovic", "(C): Ryan", "(D): Kolishnakov"]
    $answers_five = ["(A): Hemispheres", "(B): Roll The Bones", "(C): Let It Be", "(D): Moving Pictures"]
    $questions = {
        :question1 => "What is the name of Rush's original drummer?",
        :question2 => "What year did the album 'Hemispheres' release?",
        :question3 => "What year did the band form?",
        :question4 => "What is Alex Lifeson's real last name?",
        :question5 => "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"
    }

    

    puts "Welcome to Rush Trivia"
    puts "Would you like to begin? y/n"
    input = gets.chomp()
    if input == "Y" || input == "y"
        for plays in 0..5 do
            
            case plays
            when 0 then
                puts "\e[H\e[2J"
                sleep 1
                puts "Lets Begin"
                sleep 2
                puts "\e[H\e[2J"
                puts ($questions[:question1])
                for answers in $answers_one do
                    puts answers
                end
                $answer = gets.chomp()
                if $answer == "D" || $answer == "d"
                    puts "Correct!"
                    sleep 1
                    puts "\e[H\e[2J"
                else
                    puts $final_score
                    endgame
                end
            when 1 then
                $score = 1
                puts "\e[H\e[2J"
                puts "loading..."
                sleep 1
                puts "\e[H\e[2J"
                puts $current_score
                puts ($questions[:question2])
                for answers in $answers_two do
                    puts answers
                end
                $answer = gets.chomp()
                if $answer == "C" || $answer == "c"
                    puts "Correct!"
                    sleep 1
                    puts "\e[H\e[2J"
                else
                    puts $final_score
                    endgame
                end
            when 2 then
                $score = 2
                puts "\e[H\e[2J"
                puts "loading..."
                sleep 1
                puts "\e[H\e[2J"
                puts $current_score
                puts ($questions[:question3])
                for answers in $answers_three do
                    puts answers
                end
                $answer = gets.chomp()
                if $answer == "D" || $answer == "d"
                    puts "Correct!"
                    sleep 1
                    puts "\e[H\e[2J"
                else
                    puts $final_score
                    endgame
                end
            when 3 then
                $score = 3
                puts "\e[H\e[2J"
                puts "loading..."
                sleep 1
                puts "\e[H\e[2J"
                puts $current_score
                puts ($questions[:question4])
                for answers in $answers_four do
                    puts answers
                end
                $answer = gets.chomp()
                if $answer == "B" || $answer == "b"
                    puts "Correct!"
                    sleep 1
                    puts "\e[H\e[2J"
                else
                    puts $final_score
                    endgame
                end
            when 4 then
                $score = 4
                puts "\e[H\e[2J"
                puts "loading..."
                sleep 1
                puts "\e[H\e[2J"
                puts $current_score
                puts ($questions[:question5])
                for answers in $answers_five do
                    puts answers
                end
                $answer = gets.chomp()
                if $answer == "B" || $answer == "b"
                    puts "Correct!"
                    sleep 1
                    puts "\e[H\e[2J"
                else
                    puts $final_score
                    endgame
                end
            when 5 then
                $score = 5
                puts "\e[H\e[2J"
                sleep 1
                puts "loading..."
                sleep 1
                puts "\e[H\e[2J"
                puts "You Win!"
                sleep 1
                puts $final_score
                sleep 5
                puts "\e[H\e[2J"
                play_again
            end
        end
        $score += 1
    else
        puts "You're not good enough anyways..."
        endgame
    end

end
begin
    rush_trivia
rescue => exception
    'err'
end