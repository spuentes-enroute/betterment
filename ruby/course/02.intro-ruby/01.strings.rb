# > first_name = "Saul" # "Saul"
# > first_name.class # String
# > 10.class # Integer
# > 10.0.class # Float
# > first_name.methods
# > first_name.empty?
# > first_name.nil?
# > nil.nil?
# > 'Using \'scape\' on string'

# puts "Enter a number to multiply by 2"
# input = gets.chomp
# puts input.to_i * 2

puts "Enter your fistname"
first_name = gets.chomp
puts "Entter your last name"
last_name = gets.chomp

full_name = first_name + " " + last_name
char_length= full_name.length+first_name.length
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{char_length} characters in it"