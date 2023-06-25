def uppercase?(sentence)
  sentence.delete('^A-Za-z0-1')
  sentence.upcase == sentence
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true