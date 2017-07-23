roman_values = {}
roman_values['m'] = 1000
roman_values['d'] = 500
roman_values['c'] = 100
roman_values['l'] = 50
roman_values['x'] = 10
roman_values['v'] = 5
roman_values['i'] = 1

arabic_numeral = 0

puts "Hello!"
puts "Please enter a Roman numeral and I will provide the Arabic numeral equivalent!"
roman_numeral = gets.chomp.downcase
length = roman_numeral.length
count = 0
if length == 1
  puts roman_values[roman_numeral]
elsif length > 1
  while length > count + 1
    if roman_values[roman_numeral[count]] < roman_values[roman_numeral[count + 1]]
      add_value = roman_values[roman_numeral[count + 1]] - roman_values[roman_numeral[count]]
      arabic_numeral = arabic_numeral + add_value
      count = count + 1
    else
      add_value = roman_values[roman_numeral[count + 1]] + roman_values[roman_numeral[count]]
      arabic_numeral = arabic_numeral + add_value
      count = count + 1
    end
  end
end
puts "There you go: #{arabic_numeral}"
