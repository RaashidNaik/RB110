require 'date'

def five_fridays(year)
  start = Date.new(year)
  month = start.mon
  friday = 0
  five_friday = 0
  loop do
    friday += 1 if start.friday?
    start = start.next_day
    break if start.year != year
    if start.mon != month
      five_friday += 1 if friday >= 5
      month = start.mon
      friday = 0
    end
  end
  five_friday
end


p five_fridays(2015)
p five_fridays(1986)
p five_fridays(2019)