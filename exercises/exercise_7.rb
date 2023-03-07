require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "type a store name"
user_name = gets.chomp
@store7 = Store.create(name: user_name)

for error in @store7.errors.objects do
    puts error.full_message
end
