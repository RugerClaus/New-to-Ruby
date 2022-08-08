q_and_a = ["John Rutsey","1978","1969","Zivojinovic","Roll The Bones","What is the name of Rush's original drummer?",
    "What year did the album 'Hemispheres' release?","What year did the band form?",
    "What is Alex Lifeson's real last name?","What is the name of the band's 1991 Album, featuring a rap by Geddy Lee?"]
def trivia_questions
    questions 
    x = 0
    input = gets
    score = x-1
    final_score = "#####  Final Score: #{score}  #####"
    puts 'Welcome to the Game'
    puts 'Please press enter to begin'
    input.chomp()
    for questions in 1..5 do
        x += 1
        case x
        when 1 then
            puts "Score: #{score}"
            puts q_and_a[5]
            input
            if input == q_and_a[0]
                puts 'Correct'
                puts 'loading'
                sleep 2
            break
        when 2 then
            puts q_and_a[6]
            input
            break
        when 3 then
            puts q_and_a[7]
            input
            break
        when 4 then
            puts q_and_a[8]
            input
            break
        when 5 then
            puts q_and_a[9]
            input
            break
        default 
        end

    end
end
begin
    trivia_questions
rescue => exception
    'Error'
end