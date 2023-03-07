require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Jason", last_name: "Aer", hourly_rate: 100)
@store4.employees.create(first_name: "Tony", last_name: "Lier", hourly_rate: 25)
@store5.employees.create(first_name: "Khalid", last_name: "Venti", hourly_rate: 30)
@store6.employees.create(first_name: "Leon", last_name: "Omega", hourly_rate: 20)