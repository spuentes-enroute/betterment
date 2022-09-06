
def get_area_code(**hash)
  puts hash
  # hash.each do |key, value|
    # puts "Key: #{key}, Value: #{value}"
  # end
end

dial_book = {
  :newyork => "212",
  :newbrunswick => "732",
  :edison => "908",
  :plainsboro => "609",
  :sanfrancisco => "301",
  :miami => "305",
  :paloalto => "650",
  :evanston => "847",
  :orlando => "407",
  :lancaster => "717"
}

puts dial_book.class
puts dial_book[:newyork]
puts dial_book
get_area_code(dial_book)

