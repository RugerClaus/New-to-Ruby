module JsonCreator
    def quiz_selector(input)
        
        quiz_data = File.read("../assets/#{input}.json")
        data_hash = JSON.parse(quiz_data)
    end
end