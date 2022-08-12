users = [
  { username: "saul", password: "password1" },
  { username: "wera", password: "password2" },
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials are not correct"
end

puts "Welcome to the authenticator"

25.times { print '-' }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct. you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Passowrd: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4