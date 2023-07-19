require 'pry'

DEGREE = "\xC2\xB0"

def dms(num)
  degree_val = num.truncate 
  b =  (num - num.to_i) * 60 
  minute_val = sprintf("%02d", b.truncate)
  c = (b - b.to_i) * 60
  seconds_val = sprintf("%02d", c.truncate)
  "#{degree_val}#{DEGREE}#{minute_val}'#{seconds_val}\""
end 
  
p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
