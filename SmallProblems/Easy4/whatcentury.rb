def century(year)
  if year.divmod(100)[1] == 0
    century_num = year/100
  else
    century_num = year/100 + 1
  end
  century_num = century_num.to_s

  century_suffix = if century_num[-2] == '1'
    'th'
  elsif century_num[-1] == '1'
    'st'
  elsif century_num[-1] == '2'
    'nd'
  elsif century_num[-1] == '3'
    'rd'
  else
    'th'
  end

  century_num  + century_suffix
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'