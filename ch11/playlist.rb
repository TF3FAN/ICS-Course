def shuffle some_array
  recursive_shuffle [], some_array
end

def recursive_shuffle shuffled_array, unshuffled_array
  x = unshuffled_array.length
  if x > 0
    y = rand(x.to_i - 1)
    shuffled_array.push unshuffled_array[y]
    unshuffled_array.delete_at(y)
    recursive_shuffle shuffled_array, unshuffled_array
  else
    puts 'Here is the shuffled arrangement:'
    puts shuffled_array.join(', ')
  end
end

Dir.chdir 'C:/Users/Ernesto Rojas/Music'
music_files = Dir['**/*.{mp3}']
shuffle music_files
puts 'What would you like the name of this playlist to be?'
playlist_name = gets.chomp
filename = "#{playlist_name}.m3u"
File.new filename, 'w'
music_files.each do |file|
  File.open filename, 'w' do |f|
    f.write file
  end
end
puts 'Done!'
