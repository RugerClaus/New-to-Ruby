def out_of_guesses
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
    sleep 5
end
def guessing_game
    $secret_word = "Suckle"
    $guess = ""
    $guess_count = 0
    $guess_limit = 5
    $guess_left = ($guess_limit + 1)
    $out_of_guesses = false

    def intro
        puts "Welcome to the Guessing Game of Doom!"
        sleep 4
        puts "\e[H\e[2J"
        sleep 0.5
        puts "dun"
        sleep 1
        puts "\e[H\e[2J"
        sleep 0.5
        puts "dun dun"
        sleep 1
        puts "\e[H\e[2J"
        sleep 0.5
        puts "dun dun dun!!!"
        sleep 3
        puts "\e[H\e[2J"
    end

    intro

    puts "You need to guess a word that is sexual, yet innocent. Charming, yet repulsive."
    puts "It rhymes with knuckle, or even chuckle."

    while $guess != $secret_word and !$out_of_guesses
        if $guess_count < $guess_limit
            puts "Guesses left: #{$guess_left -= 1}"
            puts "Enter your guess: "
            $guess = gets.chomp()
            $guess_count += 1
        else
            $out_of_guesses = true
            puts "Out of guesses"
            if $out_of_guesses
                out_of_guesses
                puts "\e[H\e[2J"
                puts "Would you like to play again? y/n"
                input = gets.chomp()
                if input == "y"
                    guessing_game
                else
                    return
                end
            end
        end
    end

    
    sleep 2
    puts "\e[H\e[2J"

    puts "You Win!"
    sleep 1
    puts "\e[H\e[2J"
    puts "You Win!!"
    sleep 1
    puts "\e[H\e[2J"
    puts "You Win!!!"
    sleep 5
end
guessing_game