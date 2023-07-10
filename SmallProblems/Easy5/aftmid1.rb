def time_of_day(minutes)
  min_clock = (minutes % 60).to_s
  hour_clock = ((minutes/60) % 24).to_s
  
  min_clock.prepend('0') if min_clock.size < 2
  hour_clock.prepend('0') if hour_clock.size < 2
  
  hour_clock + ":" + min_clock
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"