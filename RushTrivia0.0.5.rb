$score = 0
$current_score = "Score: #{$score - 2}"
$final_score = "Score: #{$score - 1}"
$variables = {
    :questions => {
        :question1 => "What is the name of Rush's original drummer?",
        :question2 => "What year did the album 'Hemispheres' release?",
        :question3 => "What year did the band form?",
        :question4 => "What is Alex Lifeson's real last name?",
        :question5 => "What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"
    },
    :answers => {
        :answers_one => ["(A): John Bonham", "\r\n", "(B): James Franco", "\r\n", "(C): Billie Jean", "\r\n", "(D): John Rutsey"],
        :answers_two => ["(A): 1994","(B): 1873","(C): 1978","(D): 1492"],
        :answers_three => ["(A): 1960", "(B): 1873","(C): 1999", "(D): 1969"],
        :answers_four => ["(A): Jackson", "(B): Zivojinovic", "(C): Ryan", "(D): Kolishnakov"],
        :answers_five => ["(A): Hemispheres", "(B): Roll The Bones", "(C): Let It Be", "(D): Moving Pictures"]
    }
}
def rush_trivia
    for score in 0..5 do
        $score += 1
        case $score
        when 1 then
            puts "Welcome to Rush Trivia"
            puts "Would you like to begin? y/n"
            input = gets.chomp()
            if input != 'y'
                puts "Quitting..."
                sleep 1
                rush_trivia
            end
        when 2 then
            puts $current_score
            puts $variables[:question1]
            puts $variables[:answers_one][0,7]
            input = gets.chomp()
            if input != 'd'
                puts 'Wrong!'
                sleep 2
                puts final_score
                sleep 1
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
                puts 'loading...'
                sleep 1
                puts "\e[H\e[2J"
            end
        when 3 then
            puts current_score
            puts $variables[:question2]
            puts $variables[:answers_two]
            input = gets.chomp()
            if input != 'd'
                puts 'Wrong!'
                sleep 2
                puts "\e[H\e[2J"
                endgame
            else
                puts 'Correct!'
                sleep 1
                puts "\e[H\e[2J"
                puts 'loading...'
                sleep 1
                puts "\e[H\e[2J"
            end
        end
    end
end
begin
    rush_trivia
rescue => exception
    'err'
end