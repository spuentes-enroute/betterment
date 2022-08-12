20.times { puts "Hi" }

20.times { puts rand(10) }

puts 5 * "5" # error

puts "5" * "5" # error

puts "5" * "5".to_i

x = "5".to_i

puts x.to_f #5.0

# Exercise
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted from the second number is: #{second_number.to_f - first_number.to_f}"
puts "The first number added to the second number is: #{second_number.to_f + first_number.to_f}"
puts "The first number mod the second number is: #{first_number.to_f % second_number.to_f}"