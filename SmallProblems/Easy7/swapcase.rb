def swapcase(string)
  string.chars.map {|char| char == char.upcase ? char.downcase: char.upcase}.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'