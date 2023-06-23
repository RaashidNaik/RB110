def print_in_box(message)
  banner_length = message.length
  if message.length < 2
        banner_length += 2 
        message = " " + message + " "
  end
  top_bottom_line = "+ "+("-"*banner_length) + " +"
  banner_space = "| " + (" "*banner_length) + " |"
  message_line= "| " + message + " |"
  
  puts top_bottom_line
  puts banner_space
  puts message_line
  puts banner_space
  puts top_bottom_line
end 


print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('S')
  