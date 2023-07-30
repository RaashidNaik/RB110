words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words.each do |first_w|
  p words.select { |sec_w| first_w.chars.sort == sec_w.chars.sort }
end 
