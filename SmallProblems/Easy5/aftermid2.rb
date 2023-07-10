MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time)
  hours = time[0,2].to_i
  minutes = time[3,2].to_i
  (hours % HOURS_PER_DAY ) * MINUTES_PER_HOUR + minutes
end

def before_midnight(time)
  hours = time[0,2].to_i
  minutes = time[3,2].to_i
  ((HOURS_PER_DAY - hours ) % HOURS_PER_DAY ) * MINUTES_PER_HOUR - minutes
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0