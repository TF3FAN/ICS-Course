information = ['Table of Contents', 'Chapter 1: Getting Started', 'Chapter 2: Numbers', 'Chapter 3: Letters', 'page 1', 'page 2', 'page 3']
length = 80
puts (information[0].center(length))
puts (information[1].ljust(length/2) + information[4].rjust(length/2))
puts (information[2].ljust(length/2) + information[5].rjust(length/2))
puts (information[3].ljust(length/2) + information[6].rjust(length/2))
