require 'time'

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time)
  (Time.parse(time) - Time.parse("00:00")) / MINUTES_PER_HOUR
end

def before_midnight(time)
  (Time.parse("24:00") - Time.parse(time)) / MINUTES_PER_HOUR
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0