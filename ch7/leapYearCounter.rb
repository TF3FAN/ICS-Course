puts 'Leap Year Calculator Intiated'
while true
    puts 'Please submit a starting year'
    startyear = gets.chomp
    puts 'Please submit an ending year'
    endyear = gets.chomp
    x = startyear.to_i
    puts 'All leap years found between ' + startyear + ' and ' + endyear + ' :'
    while x <= endyear.to_i
        y = x/400.0
        z = x/100.0
        v = x/4.0
        if y == y.to_i
            puts x
        elsif v == v.to_i && z != z.to_i
            puts x
        end
        x = x + 1
    end
    puts 'Would you like to submit another range?'
    response = gets.chomp
    if response == 'yes'
      #do nothing
    else
      puts 'Okay. Goodbye!'
       break
    end
end
