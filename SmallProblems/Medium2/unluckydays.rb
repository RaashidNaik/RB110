def friday_13th(year)
  unlucky_num = 0
  1.upto(12) { |month| unlucky_num += 1 if Time.new(year, month, 13).friday? }
  unlucky_num
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2