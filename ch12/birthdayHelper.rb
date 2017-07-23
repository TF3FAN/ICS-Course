def organizeFile filename, birth_dates
  filename.each_line do |text|
    new_line = text.index(',')
    name =  text[0..(new_line - 1)]
    b_date = text[(new_line + 2)..text.length]
    birth_dates[name] = b_date
  end
end

Dir.chdir 'C:/Users/Ernesto Rojas/Desktop'

birth_dates = {}
filename = 'Birthdays.txt'
read_string = File.read filename

organizeFile read_string, birth_dates

puts 'Whose birthday would you like to know?'
name = gets.chomp
puts birth_dates[name]
