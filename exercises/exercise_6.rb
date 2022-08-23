require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Philip", last_name: "Simpson", hourly_rate: 100)
@store1.employees.create(first_name: "Justin", last_name: "Simpson", hourly_rate: 100)
@store1.employees.create(first_name: "Heather", last_name: "Simpson", hourly_rate: 100)
@store1.employees.create(first_name: "Alan", last_name: "Simpson", hourly_rate: 100)

@store2.employees.create(first_name: "Tom", last_name: "Cat", hourly_rate: 50)
@store2.employees.create(first_name: "Jerry", last_name: "Mouse", hourly_rate: 60)
@store1.employees.create(first_name: "Ike", last_name: "Greil", hourly_rate: 40)
@store1.employees.create(first_name: "Marth", last_name: "Roy", hourly_rate: 40)