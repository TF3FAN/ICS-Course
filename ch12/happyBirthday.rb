puts "Hello!"
puts 'Please enter what year you were born.'
year = gets.chomp
puts 'During what month? (Digit form)'
month = gets.chomp
puts 'What day? (Digit form)'
day = gets.chomp
my_birthday = Time.local(year, month, day)
current_time = Time.new
difference = current_time - my_birthday
years = ((((difference/60)/60)/24)/365)
puts "You are #{years} years old!"
puts ("SPANK!\n")*(years.to_i)
