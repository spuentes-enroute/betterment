# 0 to 32 days: $0
# 33 to 40 days: $365 per day
# 41 to 48 days: $525 per day
# More than 48 days: $625 per day

def calculate_bonus(days)
  bonus = 0

  (1..days).each do |day|
    bonus += 365 if day.between?(33,40)
    bonus += 525 if day.between?(41,48)
    bonus += 365 if day > 48
  end

  puts "Bonus: #{bonus}"
end

calculate_bonus(44)
