def map_letters(string)
  hash = Hash.new
  string.length.times do |idx|
    # Write char.
    if hash.key?(string[idx])
      hash[string[idx]] << idx
    else
      hash[string[idx]] = [idx]
    end
  end
  puts hash
end

map_letters('xoxo')