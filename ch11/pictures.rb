Dir.chdir 'C:/Users/Ernesto Rojas/Desktop'

pic_names = Dir['D:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end


  if File.exist?(new_name) == true
    puts "The file #{new_name} already exists. Are you sure you wish to overwite it?"
    while true
      response = gets.chomp.downcase
      if response == 'yes'
        File.rename name, new_name
        pic_number = pic_number + 1
        break
      elsif response == 'no'
        pic_number = pic_number + 1
        break
      else
        puts "Please respond 'yes' or 'no'."
      end
    end
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end
puts
puts 'Done!'
