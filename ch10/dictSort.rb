def sort some_array
  recursive_sort [], some_array
end

def recursive_sort sorted_array, unsorted_array
  x = unsorted_array.length
  if x > 0
    i = 0
    smallest = (unsorted_array[i]).downcase
    while (x - 1) > i
      if smallest > (unsorted_array[i + 1]).downcase
        smallest = unsorted_array[i + 1]
      end
      i=i+1
    end
    sorted_array.push smallest
    unsorted_array.delete(smallest)
    recursive_sort sorted_array, unsorted_array
  else
    puts 'Here is the sorted arrangement:'
    puts sorted_array.join(', ')
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
puts 'These are the words submitted to be sorted:' + input_array.join(', ')
puts 'Sorting.'
sort input_array

puts 'Good bye!'
