# Re-inventing multiplication
def multiply(num1, num2)
  result = 0
  num1.times { result += num2 }
  puts result
end

multiply(5, 5)