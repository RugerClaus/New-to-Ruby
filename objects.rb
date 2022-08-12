# # get power of base number

# # def power(base,power)
# #     result = 1
# #     power.times do
# #         result = result * base
# #     end
# #     return result
# # end
# # puts power(6,3)


# $employees = []


# # file = File.open("employees.txt", "r")
# # puts file.read
# # sleep 5
# # puts file.close

# File.open("employees.txt", "r+") do |file|
#     file.readline()
#     file.write("Hi")
# end

# error handling
#  \  |  /
#   \ | /
#    \|/
# def error
#     num = 10/"5"
#
# end
# def error_handler
#     puts "You can't divide by zero in Ruby"
# end
# begin
#     error
# rescue ZeroDivisionError
#     error_handler

# rescue TypeError => e
#     puts e
# end


# OOP 1
#  \  |  /
#   \ | /
#    \|/
# class Book 
#     attr_accessor :title, :author, :pages, :isbn
#     def initialize(title, author, pages, isbn)
#         @title = title
#         @author = author
#         @pages = pages
#         @isbn = isbn
#     end
# end
# $book1 = Book.new("Harry Potty", "JK Rowling", 400, 00001)


# puts $book1.title

# OOP 2
#  \  |  /
#   \ | /
#    \|/
# class Student
#     attr_accessor :name, :major, :gpa
#     def initialize(name,major,gpa)
#         @name = name
#         @major = major
#         @gpa = gpa
#     end
#     def has_honors
#         if @gpa >= 3.5
#             return true
#         else
#             return false
#         end
#     end
# end

# $s1 = Student.new("Debra", "Physics", 2.4)
# $s2 = Student.new("Jim", "Art", 3.7)


# puts $s2.has_honors

#   Quiz
#  \  |  /
#   \ | /
#    \|/
# class Question
#     attr_accessor :prompt, :answer
#     def initialize(prompt,answer)
#         @prompt = prompt
#         @answer = answer
#     end
# end

# p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
# p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
# p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

# questions = [
#     Question.new(p1,"a"),
#     Question.new(p2,"c"),
#     Question.new(p3,"b")
# ]

# def run_test(questions)
#     answer = ""
#     score = 0


#     for question in questions do
#         puts question.prompt
#         answer = gets.chomp()
#         if answer == question.answer
#             score += 1

#         else
#             score -= 1
#         end
#     end
#     puts ("You got #{score} out of #{questions.length} correct!")
# end

# run_test(questions)

# OOP 3
#   Quiz
#  \  |  /
#   \ | /
#    \|/

# class Chef
#     def make_chicken
#         puts "The chef makes chicken"
#     end
#     def make_salad
#         puts "The chef makes salad"
#     end
#     def make_special_dish
#         puts "The chef makes bbq ribs"
#     end
# end
# class ItalianChef < Chef
#     def make_special_dish
#         "The chef makes eggplant parm"
#     end
#     def make_pasta
#         puts "The chef makes pasta"
#     end
# end
# chef = Chef.new()
# chef.make_chicken
# italian_chef = ItalianChef.new()
# chef.make_special_dish
# italian_chef.make_special_dish