def letter_percentages(string)
  value = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if char =~ /[a-z]/
      value[:lowercase] += 1
    elsif char =~ /[A-Z]/
      value[:uppercase] += 1
    else
      value[:neither] += 1
    end
  end
  calculations(value, string)
end

def calculations(value, string)
  percent = { lowercase: 0, uppercase: 0, neither: 0 } 
  value.each do |key, num|
    percent[key] = num.to_f / string.chars.size * 100 
  end
  percent
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }