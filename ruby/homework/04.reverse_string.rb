
def reverse_string(string, reversed = '')
  if string.length == 0
    puts reversed
  else
    reversed += string[-1]
    reverse_string(string.chop, reversed)
  end
end


reverse_string('testing')