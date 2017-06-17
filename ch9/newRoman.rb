def divide number
    thousands = number/1000
    thousandth = 'M'*thousands
    fivehundred = ((number%1000)/500)
    fivehundredths = 'D'*fivehundred
    hundred = (((number%1000)%500)/100)
    hundredth = 'C'*hundred
    fifty = ((((number%1000)%500)%100)/50)
    fiftith = 'L'*fifty
    ten = (((((number%1000)%500)%100)%50)/10)
    tenth = 'X'*ten
    five = ((((((number%1000)%500)%100)%50)%10)/5)
    fifth = 'V'*five
    one = (((((((number%1000)%500)%100)%50)%10)%5)/1)
    oneth = 'I'*one

    if ((number%1000)/100) == 9
      hundredth = 'IM'
      fivehundredths = ''
    elsif ((number%1000)/100) == 4
      hundredth = 'ID'
      fivehundredths = ''
    else
    end
    if (((number%1000)%100)/10) == 9
      tenth = 'IC'
      fiftith = ''
    elsif (((number%1000)%100)/10) == 4
      tenth = 'IL'
      fiftith = ''
    else
    end
    if (((number%1000)%100)%10) == 9
      oneth = 'IX'
      fifth = ''
    elsif (((number%1000)%100)%10) == 4
      hundredth = 'IV'
      fifth = ''
    else
    end
    romanequivalent = thousandth + fivehundredths + hundredth + fiftith + tenth + fifth + oneth
    puts romanequivalent
end

puts 'Please enter a number between 0-3000.'
input = gets.chomp.to_i
divide input
