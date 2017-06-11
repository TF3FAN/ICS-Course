while true
  response = gets.chomp
  year = 1930 + rand(21)
  if response == 'BYE'
      break
  elsif response == response.upcase
      puts 'NO NOT SINCE ' + year.to_s + '!'
  else
      puts 'HUH? SPEAK UP, SONNY'
  end
end
puts 'BYE SONNY'
