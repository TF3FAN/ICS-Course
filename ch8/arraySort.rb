puts 'Please enter as many words as you like, one word per line.'
entries = []
while true
  word = gets.chomp
  if word == ""
    break
  else
    entries.push word
  end
end
puts 'Words entered into the database were:'
puts entries.sort
