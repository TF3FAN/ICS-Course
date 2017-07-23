puts "Hello!"
puts 'Please enter what year you were born.'
year = gets.chomp
puts 'During what month? (Digit form)'
month = gets.chomp
puts 'What day? (Digit form)'
day = gets.chomp
puts 'Hour?'
hour = gets.chomp
puts 'Minutes?'
minute = gets.chomp
puts 'Exact second?'
second = gets.chomp
my_birthday = Time.local(year, month, day, hour, minute, second)
billion_sec = my_birthday + 1000000000
puts "On #{billion_sec} you will be approximately a billion seconds old!"
puts "Bye!"
