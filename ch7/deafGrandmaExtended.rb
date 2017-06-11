x = 0
while true
  response = gets.chomp
  year = 1930 + rand(21)
  if response == 'BYE'
      x = x + 1
      if x == 3
          break
      else
        puts 'HUH? SPEAK UP, SONNY'
      end
  elsif response == response.upcase 
      puts 'NO NOT SINCE ' + year.to_s + '!'
      x = 0
  else
      puts 'HUH? SPEAK UP, SONNY'
  end
end
puts 'BYE SONNY'
