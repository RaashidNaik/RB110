puts "Please write word or multiple words:"
words_input = gets.chomp
words_length = words_input.split.join.length

puts "There are #{words_length} characers in \"#{words_input}\""