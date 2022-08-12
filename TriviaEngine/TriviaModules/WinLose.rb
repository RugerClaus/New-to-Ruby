require 'GameLoop.rb'

module Win
    def win
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
    end
end