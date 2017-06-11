puts 'Hello there! What is your first name?'
firstname = gets.chomp
puts 'What a great name' + ' ' + firstname + ' ' + 'is! Do you have a middle name? If so, enter it below with a space afterwards. If not, just press enter.'
middlename = gets.chomp
puts 'All right! What is your last name?'
lastname = gets.chomp
puts 'It is nice to met you, ' + firstname + ' ' + middlename + lastname + '!'
