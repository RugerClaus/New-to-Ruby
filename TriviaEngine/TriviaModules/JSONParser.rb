module JsonParser
    def quiz_selector(input)
        
        quiz_data = File.read("../assets/#{input}.json")
        data_hash = JSON.parse(quiz_data)
        questions = [
            TriviaQuestions.new(data_hash["$q1"],"d"),
            TriviaQuestions.new(data_hash["$q2"],"c"),
            TriviaQuestions.new(data_hash["$q3"],"d"),
            TriviaQuestions.new(data_hash["$q4"],"b"),
            TriviaQuestions.new(data_hash["$q5"],"b")
        ]
    end
end