def shuffle some_array
  recursive_shuffle [], some_array
end

def recursive_shuffle shuffled_array, unshuffled_array
  x = unshuffled_array.length
  if x > 0
    y = rand(x.to_i - 1)
    shuffled_array.push unshuffled_array[y]
    unshuffled_array.delete_at(y)
    recursive_shuffle shuffled_array, unshuffled_array
  else
    puts 'Here is the shuffled arrangement:'
    puts shuffled_array.join(', ')
  end
end

input_array = []
puts 'Hello. Please input a selection of words you would like to have randomized.'
puts 'Type the word, press enter, and repeat. To end your list, leave the line blank and press enter.'
while true
  word = gets.chomp
  if word == ''
    break
  else
  input_array.push word
  end
end
puts 'These are the words submitted to be shuffled:' + input_array.join(', ')
puts 'Shuffling.'
shuffle input_array

puts 'Good bye!'
