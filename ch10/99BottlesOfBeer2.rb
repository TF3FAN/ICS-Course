def english_number number
if number < 0 # No negative numbers.
return 'Please enter a number that isn\'t negative.'
end
if number == 0
return 'zero'
end
# No more special cases! No more returns!
num_string = '' # This is the string we will return.
ones_place = ['one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']

left = number
write = left/1000000
left = left - write*1000000

if write > 0
  millions = english_number write
  num_string = num_string + millions + ' million'
  if left > 0
    num_string = num_string + ' '
  end
end

write = left/1000
left = left - write*1000
if write > 0
  thousands = english_number write
  num_string = num_string + thousands + ' thousand'
  if left > 0
    num_string = num_string + ' '
  end
end

write = left/100
left = left - write*100
if write > 0
  hundreds = english_number write
  num_string = num_string + hundreds + ' hundred'
  if left > 0
    num_string = num_string + ' '
  end
end

write = left/10
left = left - write*10
if write > 0
  if ((write == 1) and (left > 0))
    num_string = num_string + teenagers[left-1]
    left = 0
  else
    num_string = num_string + tens_place[write-1]
  end
if left > 0
# So we don't write 'sixtyfour'...
num_string = num_string + '-'
end
end
write = left # How many ones left to write out?
left = 0 # Subtract off those ones.
if write > 0
num_string = num_string + ones_place[write-1]
# The "-1" is because ones_place[3] is
# 'four', not 'three'.
end
# Now we just return "num_string"...
num_string
end

bottles = 999
while bottles > 1
    word = english_number bottles
    puts word.capitalize + ' bottles of beer on the wall, ' + word + ' bottles of beer.'
    bottles = bottles - 1
    word = english_number bottles
    puts 'Take one down and pass it around, ' + word + ' bottles of beer on the wall.'
end
puts 'One bottle of beer on the wall, one bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'
