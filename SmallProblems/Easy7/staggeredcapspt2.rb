def staggered_case(string)
  idx = 0 
  caps = true
  new_string = ''
  loop do 
    if string[idx] =~ /[a-zA-Z]/
      if caps
        new_string << string[idx].upcase
      else
        new_string << string[idx].downcase
      end
      caps = !caps
    else
      new_string << string[idx]
    end
    idx += 1
    break if idx == string.size
  end
  new_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'