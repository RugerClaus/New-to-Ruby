q_and_a = ["What is the name of Rush's original drummer?",
    "What year did the album 'Hemispheres' release?","What year did the band form?",
    "What is Alex Lifeson's real last name?","What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"]
def trivia_questions
    x = 0
    until x == 5
        x += 1
        if x == 1
            puts q_and_a[0]
            input = gets.chomp()
            if input == 'John Rutsey' or 'john rutsey'
                puts 'correct'
                sleep 3
                return
            else
                endgame
            end
        end
        if x == 2
            puts q_and_a[1]
            input = gets.chomp()
            if input == '1978'
                puts 'Correct'
                if
    end
end
begin
    trivia_questions
rescue => exception
    'Error'
end