def main()
    score = 0
    case score
    when score = 0
        score + 1
    end

    puts 'Please enter your name: '
    name = gets.upcase()
    puts ('Hello ' + name)

    if name.length < 3
        puts 'Please enter a longer name'
    else
        puts 'Would you like to begin?'
        yesNo = gets.chomp()
        if yesNo != 'yes'

            puts 'game over'
            main()
        end

        if yesNo == 'yes'
            puts 'Score: ' + String(score)
            puts 'TRAPPED!'
            puts "You're following a narrow trail that winds through a forest." + ' Score: ' + String(score)
            puts 'What do you do?'

            puts '(1)Go left around an oncoming bend'
            puts 'or'
            puts '(2)Go right down a switchback slope'

            action_one = gets.chomp()

            if action_one == '1'
                puts "Rounding the bend, you see a giant spider several feet tall!" + ' Score: ' + String(score)
                puts 'You died!'  + ' Score: ' + String(score)
                score - 1
                main()
            end
            if action_one == '2'
                puts 'You go down the switchback, hiking steadily to not injure yourself'  + ' Score: ' + String(score)
                puts 'Finally making it down, you are able to escape the forest and return to civilization!'  + ' Score: ' + String(score)
                score + 1
                main()  + ' Score: ' + String(score)
                
            end
            
        end
        
    end
end
main()
# puts 'TRAPPED!'

# puts "You're following a narrow trail that winds through a forest." + ' Score: ' + String(score)
# puts "You see a trail around a bend" + ' Score: ' + String(score)
# puts "Rounding the bend, you see a giant spider several feet tall!" + ' Score: ' + String(score)
# puts "You pick up a heavy stick from the forest floor." + ' Score: ' + String(score)
# puts "Little use!" + ' Score: ' + String(score)
# puts "Ahead is  a whole army of giant spiders, and there are more behind you!" + ' Score: ' + String(score)





