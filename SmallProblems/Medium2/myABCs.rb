ALPHA =  = {'B' =>'O', 'X' =>'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A', 
  'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U', 
  'V' => 'I', 'L' => 'Y', 'Z' => 'M'}

def block_word?(word)
  simp_arr = word.upcase.chars.map { |char| ALPHA[char] ? ALPHA[char]: char }
  simp_arr.uniq.length == simp_arr.length
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true