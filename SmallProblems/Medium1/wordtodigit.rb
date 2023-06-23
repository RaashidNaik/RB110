def word_to_digit(message)
  numeric_array = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  numeric_array.each_with_index do |num, idx|
      message.gsub!(/\b#{num}\b/, idx.to_s)
  end
  message
end
  



p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('Call nine six seven eleven. Call Pizza Pizza, hey, hey, hey!') == 'Call 9 6 7 eleven. Call Pizza Pizza, hey, hey, hey!'
