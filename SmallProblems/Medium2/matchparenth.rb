def balanced?(string)
  strip = string.delete("^()").chars
  start_idx = []
  fin_idx = []
  strip.each_with_index do |char, idx|
    start_idx << idx if char == '('
    fin_idx << idx if char == ')'
  end
  return false if start_idx.size != fin_idx.size
  0.upto(start_idx.size - 1).all? { |idx| start_idx[idx] < fin_idx[idx] }
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false